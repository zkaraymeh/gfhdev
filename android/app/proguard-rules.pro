# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /usr/local/Cellar/android-sdk/24.3.3/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
-keepclassmembers class fqcn.of.javascript.interface.for.webview {
   public *;
}

-keep class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
    public void set*(...);
}
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}
-keepclassmembers class * extends android.view.View {
    void set*(***);
    *** get*();
}

-keepclasseswithmembernames class * {
    native <methods>;
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

-dontoptimize

-keepclassmembers class **.R$* {
    public static <fields>;
}

# Keep classes with native methods
-keepclasseswithmembernames class * {
    native <methods>;
}
# Keep React Native classes
-keep class com.facebook.react.** { *; }
-keepclassmembers class * extends com.facebook.react.bridge.ReactContextBaseJavaModule {
    <methods>;
}
-keepclassmembers class * extends com.facebook.react.bridge.JavaScriptModule {
    <methods>;
}
-keepclassmembers class * extends com.facebook.react.bridge.NativeModule {
    <methods>;
}


-keep class net.sqlcipher.** { *; }
-keep class net.sqlcipher.database.* { *; }
-keep class com.horcrux.svg.** { *; }
-printusage usage.txt

# ========================== START OF UPDATES ==========================

# React Native libraries
-keep class com.facebook.react.modules.** { *; }

# react-native-geolocation-service
-keep class com.agontuk.RNFusedLocation.** { *; }

# react-native-svg
-keep class com.horcrux.svg.** { *; }

# react-native-device-info
-keep class com.learnium.RNDeviceInfo.** { *; }

# react-native-vector-icons
-keep class com.oblador.vectoricons.** { *; }

# react-native-firebase
-keep class io.invertase.firebase.** { *; }

# react-native-push-notification
-keep class com.dieam.reactnativepushnotification.** { *; }

# react-native-sensitive-info
-keep class com.oblador.keychain.** { *; }

# react-native-fast-image
-keep class com.dylanvann.fastimage.** { *; }

# react-native-image-picker
-keep class com.imagepicker.** { *; }

# react-native-webview
-keep class com.reactnativecommunity.webview.** { *; }

# react-native-reanimated
-keep class com.swmansion.reanimated.** { *; }

# react-native-geocoder
-keep class com.devfd.RNGeocoder.** { *; }

# react-native-document-picker
-keep class com.reactnativedocumentpicker.** { *; }

# react-native-touch-id
-keep class com.rnfingerprint.** { *; }

# rn-fetch-blob
-keep class com.RNFetchBlob.** { *; }

# react-native-permissions
-keep class com.reactnativecommunity.rnpermissions.** { *; }

# @react-native-community/masked-view
-keep class com.reactnativecommunity.maskedview.** { *; }

# Veriff SDK
-keep class com.veriff.** { *; }

# =========================== END OF UPDATES ===========================
