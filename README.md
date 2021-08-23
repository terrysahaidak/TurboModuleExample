# React Native Turbo Module example

This repository is a Turbo Module implementation of Clipboard Core React Native module.

## How to make your own Turbo Module

1. Create a new npm package
2. Add `react-native-tscodegen` and `react-native-tscodegen-types` as devDependencies
3. Copy `TurboClipboard.podspec`, rename it, change library name, author etc
4. Implement `TurboModule.ts` file: define all the methods in the Spec interface
5. Copy `react-native-tscodegen.json`, rename library name etc
6. Add `codegen` script to `package.json` with the following command to run: `react-native-tscodegen ./react-native-tscodegen.json`
7. Run `npm run codegen` - it will generate Spec files - the JSI bridge which you should include in your sources. Your native module interface should extend `NSObject <ModuleNameSpec>` - the generated spec by the codegen of your `TurboModule.ts`
8. Add your implementation source files following the example of `TurboClipboard` header and `mm` file
9. Change `source_files` in the PodSpec accordingly
10. Include in your TurboModule enabled application
11. Use it

## LICENSE

MIT
