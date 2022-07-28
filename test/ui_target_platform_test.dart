import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ui_target_platform/ui_target_platform.dart';

String removeClassName(Object value) {
  final str = value.toString();
  return str.substring(str.indexOf('.'));
}

void main() {
  test('Same value than TargetPlatform', () {
    for (TargetPlatform targetPlatform in TargetPlatform.values) {
      expect(
          removeClassName(targetPlatform),
          equals(removeClassName(
              UITargetPlatform.fromTargetPlatform(targetPlatform))));
    }
  });

  test('UITargetPlatform.web', () {
    debugDefaultUITargetPlatformIsWeb = true;
    for (TargetPlatform targetPlatform in TargetPlatform.values) {
      expect(UITargetPlatform.fromTargetPlatform(targetPlatform),
          equals(UITargetPlatform.web));
    }
  });
}
