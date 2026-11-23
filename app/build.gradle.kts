plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
}

android {
    namespace = "com.albert.xiaoguyun"
    compileSdk = 34
    defaultConfig {
        applicationId = "com.albert.xiaoguyun"
        minSdk = 24
        targetSdk = 33
        versionCode = 11
        versionName = "1.1.9"
        ndk { abiFilters.addAll(listOf("arm64-v8a", "armeabi-v7a")) }
    }
    buildTypes {
        getByName("debug") { isMinifyEnabled = false }
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
    // and enhanced RTMP ('avc1'/'hvc1'). libVLC 3.x could not decode this
    // camera's stream; libVLC stays only for VlcRecorder (local recording).
    implementation("androidx.media3:media3-exoplayer:1.3.1")
    implementation("androidx.media3:media3-datasource-rtmp:1.3.1")
    implementation("androidx.media3:media3-extractor:1.3.1")
    implementation("org.videolan.android:libvlc-all:3.6.0")
}
