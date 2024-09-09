#!/bin/bash

# Define the paths
APP_NAME="HelloWorldApp"
SRC_DIR="src/com/example/helloworld"
RES_DIR="$SRC_DIR/res"
OUTPUT_DIR="bin"

# Create output directory
mkdir -p $OUTPUT_DIR

# Compile the Java source files
javac -source 1.8 -target 1.8 -classpath $ANDROID_HOME/platforms/android-30/android.jar -d $OUTPUT_DIR $SRC_DIR/*.java $RES_DIR/layout/*.xml $RES_DIR/values/*.xml

# Create the APK file
aapt package -f -m -J src -S $RES_DIR -I $ANDROID_HOME/platforms/android-30/android.jar -F $OUTPUT_DIR/$APP_NAME.apk

# Create the APK
dx --dex --output=$OUTPUT_DIR/classes.dex $OUTPUT_DIR/*.class

# Align the APK
aapt add $OUTPUT_DIR/$APP_NAME.apk $OUTPUT_DIR/classes.dex

# Sign the APK
apksigner sign --ks my-release-key.jks --ks-key-alias alias_name --ks-pass pass:your_key_password --key-pass pass:your_key_password $OUTPUT_DIR/$APP_NAME.apk
