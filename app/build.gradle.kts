import java.util.Properties

plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
}

// v1.2.3: optional explicit debug signing via local.properties (gitignored).
// Used by workstations whose default ~/.android/debug.keystore differs from
// the team key, so debug APKs can cover-install the build already on the
// device. When the property is absent (CI, fresh clone, the build server with
// its matching ~/.android/debug.keystore) Gradle's default debug signing is
// used unchanged. No credentials live in the repository.
val localProps = Properties().apply {
    val f = rootProject.file("local.properties")
    if (f.exists()) f.inputStream().use { load(it) }
}
val handoverKeystore: String? = localProps.getProperty("signingKeystore")

android {
    namespace = "com.albert.xiaoguyun"
    compileSdk = 34
    defaultConfig {
        applicationId = "com.albert.xiaoguyun"
        minSdk = 24
        targetSdk = 33
        versionCode = 16
        versionName = "1.2.4"
        ndk { abiFilters.addAll(listOf("arm64-v8a", "armeabi-v7a")) }
    }
    signingConfigs {
        if (handoverKeystore != null) {
            create("handover") {
                storeFile = file(handoverKeystore)
                storePassword = "android"
                keyAlias = "androiddebugkey"
                keyPassword = "android"
            }
        }
    }
    buildTypes {
        getByName("debug") {
            isMinifyEnabled = false
            if (handoverKeystore != null) {
                signingConfig = signingConfigs.getByName("handover")
            }
        }
        getByName("release") {
            isMinifyEnabled = false
            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
        }
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    kotlinOptions { jvmTarget = "17" }
}

dependencies {
    implementation("androidx.core:core-ktx:1.12.0")
    implementation("androidx.appcompat:appcompat:1.6.1")
    implementation("androidx.recyclerview:recyclerview:1.3.2")
    implementation("androidx.lifecycle:lifecycle-runtime-ktx:2.7.0")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.7.3")
    implementation("androidx.security:security-crypto:1.1.0-alpha06")
    implementation("com.squareup.okhttp3:okhttp:4.12.0")
    implementation("com.google.code.gson:gson:2.10.1")
    implementation("org.java-websocket:Java-WebSocket:1.5.4")
    // Playback v1.1.6: Media3 ExoPlayer + RTMP data source, with a custom
    // FLV extractor (FlvEnhancedExtractor) that handles legacy AVC/HEVC
    // and enhanced RTMP ('avc1'/'hvc1'). v1.2.3: the dead libVLC dependency
    // (VlcPlayer/VlcRecorder were replaced in v1.1.6/v1.2.2 and had no live
    // references) is removed — VLC 3.x cannot decode this camera's stream
    // anyway, and its 78 MB AAR bloated every build and the APK.
    implementation("androidx.media3:media3-exoplayer:1.3.1")
    implementation("androidx.media3:media3-datasource-rtmp:1.3.1")
    implementation("androidx.media3:media3-extractor:1.3.1")
}
