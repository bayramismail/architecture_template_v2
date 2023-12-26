// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

/// Make a adaptive view for all platforms
final class AdaptAllView extends StatelessWidget {
  /// Define your custom widget for ever
  /// mobile,desktop,tablet
  const AdaptAllView({
    super.key,
    required this.phone,
    required this.tablet,
    required this.desktop,
  });

  /// Define your custom widget for mobile
  final Widget phone;

  /// Define your custom widget for tablet
  final Widget tablet;

  /// Define your custom widget for desktop
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isMobile) {
      return phone;
    }
    if (ResponsiveBreakpoints.of(context).isTablet) {
      return tablet;
    }
    if (ResponsiveBreakpoints.of(context).isDesktop) {
      return desktop;
    }
    return desktop;
  }
}
