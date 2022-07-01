#!/bin/sh

#  build_sdk.sh

sh_root_dir=$(cd `dirname $0`; pwd)

build_lib_dir=$sh_root_dir/build_lib.sh
build_framework_dir=$sh_root_dir/build_framework.sh
build_copyfiles_dir=$sh_root_dir/build_copyfiles.sh

output_root_dir=$sh_root_dir/../../../Release/iOS
output_root_core_dir=$output_root_dir/Core/Base

chmod 777 $build_lib_dir
chmod 777 $build_framework_dir

base
sh $build_lib_dir "Plugins/Base/FunBase" "FunBase" $output_root_core_dir/FunBase
sh $build_lib_dir "Plugins/Base/FunBaseUI" "FunBaseUI" $output_root_core_dir/FunBase
sh $build_lib_dir "Plugins/Base/FunCatch" "FunCatch" $output_root_core_dir/FunBase
sh $build_lib_dir "Plugins/Base/FunLogAgent" "FunLogAgent" $output_root_core_dir/FunBase

sh $build_lib_dir "Plugins/H5/FunH5SDK" "FunH5SDK" $output_root_dir/FPXCMSImp/res/libs
sh $build_framework_dir "FPSDK/CMS/FunCMS/FunCMS" "FunCMS" $output_root_dir/FPXCMSImp/res/libs

if [[ ! -d $output_root_dir/FPXCMSImp/res/res ]]; then
    mkdir $output_root_dir/FPXCMSImp/res/res
fi
cp -R $sh_root_dir/../../SDK/iOS-SDK/FPSDK/CMS/FunCmsDemo/FunCmsDemo/FP_CMSRes.bundle $output_root_dir/FPXCMSImp/res/res

sh $build_lib_dir "FPSDK/Notice/FunNotice" "FunNotice" $output_root_dir/FPXNotice/res/libs

sh $build_lib_dir "FPSDK/Privacy/FunPrivacy" "FunPrivacy" $output_root_dir/FPXPrivacy/res/libs
sh $build_lib_dir "FPSDK/Privacy/FunPrivacyUI" "FunPrivacyUI" $output_root_dir/FPXPrivacy/res/libs

sh $build_lib_dir "FPSDK/Push/FunPush" "FunPush" $output_root_dir/FPXPush/res/libs

sh $build_lib_dir "FPSDK/Attribution/FunAttribution" "FunAttribution" $output_root_dir/FPXAdvert/FPXAdvertFunImp/res/libs

sh $build_lib_dir "FPSDK/Payment/FunAppleIAP" "FunAppleIAP" $output_root_dir/FPXIMP/res/libs
sh $build_lib_dir "FPSDK/Account/Account/FPAccount" "FPAccount" $output_root_dir/FPXIMP/res/libs
sh $build_lib_dir "FPSDK/Account/Account/FPAccountBase" "FPAccountBase" $output_root_dir/FPXIMP/res/libs
sh $build_lib_dir "FPSDK/Account/AccountUI/FPAccountUI" "FPAccountUI" $output_root_dir/FPXIMP/res/libs
sh $build_copyfiles_dir "FPXThirdLibs/ShuMei" "FPXIMP/res/libs"

if [[ ! -d $output_root_dir/FPXIMP/res/res ]]; then
    mkdir $output_root_dir/FPXIMP/res/res
fi
cp -R $sh_root_dir/../../SDK/iOS-SDK/FPSDK/Account/AccountDemo/AccountDemo/FPAccountSdk.bundle $output_root_dir/FPXIMP/res/res

