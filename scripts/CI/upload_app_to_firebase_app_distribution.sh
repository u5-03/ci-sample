# Setup firebase-tools/firebase_app_distribution plugin
make firebaseInstall
bundle -v

bundle install

# Build/upload ios app
cd ./ios
pod --version
# To avoid the error below.
# error: Unable to load contents of file list: '/Target Support Files/Pods-Runner/Pods-Runner-frameworks-Release-adhoc-input-files.xcfilelist' (in target 'Runner' from project 'Runner')
pod install
bundle exec fastlane upload_firebase_app_distribution

# Build/upload android app
../android
bundle exec fastlane upload_firebase_app_distribution
