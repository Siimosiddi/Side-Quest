#!/usr/bin/env bash
# Richiede: Node 18+, JDK 17, Android SDK (ANDROID_HOME impostato)
set -e
npm install
[ -d android ] || npx cap add android
npx cap sync android
cd android && chmod +x gradlew && ./gradlew assembleDebug
echo "APK pronto in: android/app/build/outputs/apk/debug/app-debug.apk"
