Building OpenCV from Source, using CMake and Command Line
=========================================================

cd ~/<my_working_directory>
python opencv/platforms/ios/build_framework.py ios

If everything's fine, a few minutes later you will get ~/<my_working_directory>/ios/opencv2.framework. You can add this framework to your Xcode projects.


* Building XCFramework

cd ~/<my_working_directory>
python opencv/platforms/ios/build_framework_ios_only.py --legacy_build --iphoneos_archs arm64 ios
python opencv/platforms/ios/build_framework_sim_only.py --legacy_build --iphonesimulator_archs arm64,x86_64 ios_sim

xcodebuild -create-xcframework -framework ios/opencv2.framework -framework ios_sim/opencv2.framework -output opencv2.xcframework

