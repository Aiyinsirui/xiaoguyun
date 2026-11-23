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
        versionCode = 7
        versionName = "1.1.5"
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
    // RTMP playback: libVLC for Android 3.6.0 (VLC handles RTMP natively;
    // ExoPlayer core does not support RTMP, so VLC is used here as primary).
    implementation("org.videolan.android:libvlc-all:3.6.0")
}
