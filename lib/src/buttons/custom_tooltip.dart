import 'package:flutter/material.dart';
import '../format.dart';

class CustomTooltip extends StatelessWidget {
  final String message;
  final Widget child;
  final Color? backgroundColor;
  final Duration? waitDuration;
  final Duration? showDuration;
  const CustomTooltip({
    super.key,
    required this.message,
    required this.child,
    this.backgroundColor,
    this.waitDuration,
    this.showDuration,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      waitDuration: waitDuration ?? const Duration(milliseconds: 500),
      showDuration: showDuration ?? const Duration(seconds: 5),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.grey.shade500,
        borderRadius: BorderRadius.circular(20),
      ),
      textStyle: roboto.copyWith(color: Colors.white, fontSize: 12),
      child: child,
    );
  }
}
