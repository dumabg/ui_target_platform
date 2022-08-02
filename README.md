# UITargetPlatform

 [![Pub version](https://img.shields.io/pub/v/ui_target_platform.svg)](https://pub.dev/packages/ui_target_platform)

On Flutter 3.0.5 `TargetPlatform` enum doesn't have a value for web platform.

`Theme.of(context).platform` is used for adapting UI to different platforms, but for web platform you can't use it (on `TargetPlatform` enum doesn't exist `web`) and must use the `kIsWeb` global variable.

This package contains the enum `UITargetPlatform`, that has the same values than `TargetPlatform` with a new value `web`.

It also contains the global variable `debugDefaultUITargetPlatformIsWeb` for testing. The package [test_screen](https://pub.dev/packages/test_screen) uses it for doing web tests.

## Usage

Get `TargetPlatform` from `Theme` and pass it to `UITargetPlatform.fromTargetPlatform()`. Use `UITargetPlatform` like `TargetPlatform`.

```dart
 @override
  Widget build(BuildContext context) {
    final platform =
        UITargetPlatform.fromTargetPlatform(Theme.of(context).platform);
    switch (platform) {
      case UITargetPlatform.iOS:
        return _cupertinoSlider();
      case UITargetPlatform.web:
        return _webSlider();
      default:
        return _defaultSlider();
    }
}
```
