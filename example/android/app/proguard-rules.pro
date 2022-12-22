
-keepattributes JavascriptInterface
-keepattributes *Annotation*

-dontwarn io.nearpay.sdk.**
-keep class io.nearpay.sdk.** {*;}

-optimizations !method/inlining/*
