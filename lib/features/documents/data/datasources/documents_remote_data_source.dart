import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../../../../core/network/api_response.dart';
import '../../domain/entities/document.dart';
import '../../domain/entities/document_filter_options.dart';
import '../../domain/entities/document_filters.dart';
import '../models/document_filter_options_model.dart';
import '../models/document_model.dart';

typedef DocumentsPageRaw = ({List<DocumentModel> items, PageInfo page});

abstract class DocumentsRemoteDataSource {
  Future<DocumentsPageRaw> getDocuments(DocumentFilters filters, int page);
  Future<DocumentsSummaryModel> getSummary();

  /// خيارات الفلاتر المقيّدة بوثائق المستخدم (BE-4).
  Future<DocumentFilterOptions> getFilterOptions();

  /// ينزّل الوثيقة لملف مؤقت ويرجّع مساره.
  Future<String> downloadDocument(String id, String title);
}

@LazySingleton(as: DocumentsRemoteDataSource)
class DocumentsRemoteDataSourceImpl implements DocumentsRemoteDataSource {
  final ApiClient client;
  DocumentsRemoteDataSourceImpl(this.client);

  /// الحد الأقصى للصفحة في الباك: `min(50, max(1, per_page))`، والافتراضي 24.
  static const _perPage = 24;

  @override
  Future<DocumentsPageRaw> getDocuments(
    DocumentFilters filters,
    int page,
  ) async {
    final res = await client.getEnvelope(
      ApiConstants.documents,
      query: _buildQuery(filters, page),
    );
    return (
      items: Paginated.from(res, DocumentModel.fromJson).items,
      page: res.page,
    );
  }

  @override
  Future<DocumentsSummaryModel> getSummary() async {
    final data = await client.get(ApiConstants.documentsSummary);
    return DocumentsSummaryModel.fromJson(data as Map<String, dynamic>);
  }

  @override
  Future<DocumentFilterOptions> getFilterOptions() async {
    final data = await client.get(ApiConstants.documentsFilters);
    if (data is! Map<String, dynamic>) return DocumentFilterOptions.empty;
    return DocumentFilterOptionsModel.fromJson(data);
  }

  @override
  Future<String> downloadDocument(String id, String title) async {
    final bytes = await client.downloadBytes(ApiConstants.document(id));

    // مجلد مؤقت — الملف عرضي، وإعادة التنزيل أرخص من إدارة تخزين دائم.
    final dir = await getTemporaryDirectory();
    final file = File('${dir.path}/${_safeName(title)}.pdf');
    await file.writeAsBytes(bytes, flush: true);
    return file.path;
  }

  /// عنوان الوثيقة بيدخل في اسم الملف — بنشيل أي محارف بتكسر المسار.
  static String _safeName(String title) {
    final cleaned = title.replaceAll(RegExp(r'[/\\:*?"<>|]'), '_').trim();
    return cleaned.isEmpty ? 'document' : cleaned;
  }

  /// بناء الـ query string.
  ///
  /// ملاحظتان عن سلوك الباك:
  /// 1. `type` بيتقرا كـ `(array) $request->query('type', [])` — فبنبعت
  ///    مصفوفة وDio بيرمّزها `type[]=A&type[]=B`.
  /// 2. لو بعتنا `from`/`to` فالـ `preset` **بيتجاهل** ويتحوّل لـ `custom`،
  ///    فبنبعت واحد بس من الاتنين عشان ما نبعتش إشارات متضاربة.
  Map<String, dynamic> _buildQuery(DocumentFilters f, int page) {
    final types = f.types
        .map((t) => t.apiValue)
        .whereType<String>()
        .toList();

    return {
      'page': page,
      'per_page': _perPage,
      'sort': f.sort.apiValue,
      if (f.search?.isNotEmpty ?? false) 'search': f.search,
      if (types.isNotEmpty) 'type': types,
      if (f.hasCustomRange) ...{
        if (f.from != null) 'from': _ymd(f.from!),
        if (f.to != null) 'to': _ymd(f.to!),
      } else if (f.preset != DocumentDatePreset.all)
        'preset': f.preset.apiValue,
      if (f.categoryId != null) 'category_id': f.categoryId,
      if (f.wilayaId != null) 'wilaya_id': f.wilayaId,
      if (f.entityId != null) 'entity_id': f.entityId,
    };
  }

  /// الباك بيحلّل التواريخ بصيغة Y-m-d فقط — الـ ISO instants بترجع null.
  static String _ymd(DateTime d) =>
      '${d.year.toString().padLeft(4, '0')}-'
      '${d.month.toString().padLeft(2, '0')}-'
      '${d.day.toString().padLeft(2, '0')}';
}
