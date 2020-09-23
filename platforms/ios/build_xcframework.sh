#!/bin/bash

python opencv/platforms/ios/build_framework_ios_only.py --legacy_build --iphoneos_archs arm64 ios

python opencv/platforms/ios/build_framework_sim_only.py --legacy_build --iphonesimulator_archs arm64,x86_64 ios_sim

xcodebuild -create-xcframework -framework ios/opencv2.framework -framework ios_sim/opencv2.framework -output opencv2.xcframework


