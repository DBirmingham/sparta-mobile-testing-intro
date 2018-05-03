# Mobile Testing Intro

My first encounters with mobile testing. It delivers mobile tests written in Ruby 
- through RSpec, found in the native folder
- through cucumber found in appium_cucumber. 

The main new technologies encountered were Appium and Android Studio.

## Getting Started

### Installation

- [Appium 1.2.3](https://github.com/appium/appium-desktop/releases/tag/v1.2.3)
- [Android Studio](https://developer.android.com/studio/)
- [Java](http://www.oracle.com/technetwork/java/javase/downloads/jre10-downloads-4417026.html)

First ensure that you have both Appium, Android Studio installed and the latest version of Java installed.
Then in the terminal enter the following commands:
```
git clone https://github.com/DBirmingham/sparta-mobile-testing-intro.git
cd CLONED_REPOSTIORY_NAME
bundle
```
If you do not have bundler installed run within the cloned repo
```
gem install bundler
```

### Android Studio setup

Install the version of Android Studio as linked above and start a new project.
As you go through setup the key fields required are: 
- The phone and tablet form factor set to 'API 15'
- The activity should be set to 'Empty Activity'

Once this setup is complete, under tools click SDK Manager.
Ensure Android 8.0 (Oreo) is ticked and click apply to install.

Under tools again click AVD Manager and create a new virtual device.
- The phone used in this project was the Nexus 6P
- Select the Android 8.0 Oreo system image
- Proceed to finish virtual device creation without further configuration

Once this is all complete you should be able to launch a virtual machine running Android 8.0!

### Appium setup

Appium should be relatively ready to go from installation. However, there are some prerequisites. It is a node app and so will require a recent version of nodeJS. This can be done with brew:
```
brew install node
```
It is also recommended that you install appium-doctor to ensure that it will be ready to run. To do this enter in your terminal:
```
npm install -g appium-doctor
```
(This requires npm - node package manager - to be installed as well but it is typically included with node)

Once opened, start up a server.
Click on the magnifying glass icon to start an Inspector session. Under desired capabilites create the following JSON object using the text-fields and dropdowns:

```JSON
{
  "platformName": "Android",
  "deviceName": "emulator-5554",
  "app": "/Users/tech-a03/Eng7/Mobile_testing/budgetwatch.apk"
}
```

Finally start session and you're ready to go!

### Running Tests

Tests can be run with the terminal commands ```rspec``` and ```cucumber``` within their respective root folders.
