install:
	make bundleInstall
	make firebaseInstall

bundleInstall:
	bundle install --jobs 4 --retry 3 --path vendor/bundle #--local

firebaseInstall:
	npm install firebase-tools
	bundle exec fastlane add_plugin firebase_app_distribution
buildNativeAdhocApp:
	make $@ -C ios buildNativeAdhocApp
	make $@ -C android buildNativeAdhocApp