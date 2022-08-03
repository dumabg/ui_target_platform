// Copyright 2022 Miguel Angel Besalduch Garcia, mabg.dev@gmail.com. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Override the [UITargetPlatform.fromTargetPlatform()] return to web.
///
/// This override is only useful for tests.
/// In general, therefore, this property should not be used in release builds.
bool debugDefaultUITargetPlatformIsWeb = false;

/// The platform that user interaction should adapt to target.
/// This is the same enum than `TargetPlatform` on foundation/platform.dart,
/// but web is added
enum UITargetPlatform {
  /// Android: <https://www.android.com/>
  android,

  /// Fuchsia: <https://fuchsia.dev/fuchsia-src/concepts>
  fuchsia,

  /// iOS: <https://www.apple.com/ios/>
  iOS,

  /// Linux: <https://www.linux.org>
  linux,

  /// macOS: <https://www.apple.com/macos>
  macOS,

  /// Windows: <https://www.windows.com>
  windows,

  /// Web
  web;

  // Return the same value than TargetPlatform only if isn't
  // running or testing on a web environment
  factory UITargetPlatform.fromTargetPlatform(TargetPlatform targetPlatform) {
    return (debugDefaultUITargetPlatformIsWeb || kIsWeb)
        ? UITargetPlatform.web
        : UITargetPlatform.values[targetPlatform.index];
  }

  // Return the same value than UITargetPlatform.fromTargetPlatform(Theme.of(context).platform)
  factory UITargetPlatform.of(BuildContext context) =>
    UITargetPlatform.fromTargetPlatform(Theme.of(context).platform);
}
