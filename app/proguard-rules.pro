# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/zeminwang/Library/Android/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile


-optimizationpasses 5          # 指定代码的压缩级别
-dontusemixedcaseclassnames   # 是否使用大小写混合
-dontpreverify           # 混淆时是否做预校验
-verbose                # 混淆时是否记录日志

-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*  # 混淆时所采用的算法

-keep public class * extends android.app.Activity       # 保持哪些类不被混淆
-keep public class * extends android.app.Fragment       # 保持哪些类不被混淆
-keep public class * extends android.app.Application    # 保持哪些类不被混淆
-keep public class * extends android.app.Service        # 保持哪些类不被混淆
-keep public class * extends android.content.BroadcastReceiver      # 保持哪些类不被混淆
-keep public class * extends android.content.ContentProvider        # 保持哪些类不被混淆
-keep public class * extends android.app.backup.BackupAgentHelper   # 保持哪些类不被混淆
-keep public class * extends android.preference.Preference          # 保持哪些类不被混淆
-keep public class com.android.vending.licensing.ILicensingService  # 保持哪些类不被混淆

-keepattributes Exceptions,InnerClasses,Signature
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable

-keepclasseswithmembernames class * { # 保持 native 方法不被混淆
    native <methods>;
}

-keepclasseswithmembers class * { # 保持自定义控件类不被混淆
    public <init>(android.content.Context);
}
-keepclasseswithmembers class * { # 保持自定义控件类不被混淆
    public <init>(android.content.Context, android.util.AttributeSet);
}
-keepclasseswithmembers class * { # 保持自定义控件类不被混淆
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers class * extends android.app.Activity { # 保持自定义控件类不被混淆
    public void *(android.view.View);
}
-keepclassmembers enum * { # 保持枚举 enum 类不被混淆
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keep class * implements android.os.Parcelable { # 保持 Parcelable 不被混淆
    public static final android.os.Parcelable$Creator *;
}

-keep class * implements java.io.Serializable{
    public protected private *;
}

#xpush
-libraryjars libs/ifly_push_sdk_1.0_1050.jar
-dontwarn com.iflytek.pushclient.**
-dontwarn com.iflytek.psunflower.**
-dontwarn com.google.protobuf.**

#bugly
-dontwarn com.tencent.bugly.**
-keep public class com.tencent.bugly.**{*;}