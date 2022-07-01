#!/bin/sh

echo "############ My iOS SDK Build 2016 ############"

test -n "$XCODEBUILD"   || XCODEBUILD=$(which xcodebuild)
test -n "$LIPO"         || LIPO=$(which lipo)
test -n "$PRODUCTSIGN"  || PRODUCTSIGN=$(which productsign)
test -n "$PLISTBUDDY"   || PLISTBUDDY=/usr/libexec/PlistBuddy

# < XCode 4.3.1
if [ ! -x "$XCODEBUILD" ]; then
# XCode from app store
XCODEBUILD=/Applications/XCode.app/Contents/Developer/usr/bin/xcodebuild
fi

test -x "$XCODEBUILD" || die 'Could not find xcodebuild in $PATH'

echo $XCODEBUILD  #get xcodebuild path
echo $LIPO
echo $PRODUCTSIGN
echo $PLISTBUDDY

# ----------------------------------------------------------------------------
# Set up pathes
#
SDK_VERSION="1.0.0"
echo "############ My iOS SDK Build Version $SDK_VERSION ############"

KG_sdk_script=$(pwd)
KG_sdk_root=$(dirname $KG_sdk_script)

echo $KG_sdk_script
echo $KG_sdk_root

export KG_sdk_folder_name="MY-iOS-SDK"
echo $KG_sdk_folder_name

export KG_sdk_zip_folder_name=$KG_sdk_folder_name
echo $KG_sdk_zip_folder_name

rm -rf "${KG_sdk_root}/release/"
mkdir "${KG_sdk_root}/release/"

KG_sdk_release="${KG_sdk_root}/release/${KG_sdk_folder_name}"

echo $KG_sdk_release


if [ -d $KG_sdk_release ];then
    echo "[Error]Version ${SDK_VERSION} already exist: ${KG_sdk_release}"
    exit 1
else
    mkdir $KG_sdk_release
fi