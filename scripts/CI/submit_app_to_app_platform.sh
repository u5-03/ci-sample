
make firebaseInstall
bundle -v

bundle install

cd ./ios
pod --version
# To avoid the error below.
# error: Unable to load contents of file list: '/Target Support Files/Pods-Runner/Pods-Runner-frameworks-Release-adhoc-input-files.xcfilelist' (in target 'Runner' from project 'Runner')
pod install
bundle exec fastlane release