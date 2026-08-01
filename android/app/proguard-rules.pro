# slf4j is an optional dependency of the Pusher java client; no binder is shipped.
-dontwarn org.slf4j.**

# Pusher / java-websocket
-keep class com.pusher.** { *; }
-dontwarn com.pusher.**
-keep class org.java_websocket.** { *; }
-dontwarn org.java_websocket.**

# Gson (used by the Pusher client) — keep generic signatures and model fields
-keepattributes Signature, InnerClasses, EnclosingMethod
-keepattributes *Annotation*
-dontwarn com.google.gson.**
