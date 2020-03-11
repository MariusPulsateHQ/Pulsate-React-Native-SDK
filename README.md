
# pulsate-react-native-sdk

## Getting started

`$ npm install pulsate-react-native-sdk --save`

### Mostly automatic installation

`$ react-native link pulsate-react-native-sdk`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `pulsate-react-native-sdk` and add `RNPulsateSdkReact.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNPulsateSdkReact.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNPulsateSdkReactPackage;` to the imports at the top of the file
  - Add `new RNPulsateSdkReactPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':pulsate-react-native-sdk'
  	project(':pulsate-react-native-sdk').projectDir = new File(rootProject.projectDir, 	'../node_modules/pulsate-react-native-sdk/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':pulsate-react-native-sdk')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNPulsateSdkReact.sln` in `node_modules/pulsate-react-native-sdk/windows/RNPulsateSdkReact.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Pulsate.Sdk.React.RNPulsateSdkReact;` to the usings at the top of the file
  - Add `new RNPulsateSdkReactPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNPulsateSdkReact from 'pulsate-react-native-sdk';

// TODO: What to do with the module?
RNPulsateSdkReact;
```
- [Read More](https://pulsate.readme.io/v2.3/docs)
  
