// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

abstract class RippleWrapper extends StatelessWidget {
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final BoxDecoration? decoration;
  final Widget? child;
  final BorderRadius? rippleBorderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? rippleColor;

  final Alignment? alignment;

  const RippleWrapper({
    super.key,
    this.onTap,
    this.height,
    this.width,
    this.decoration,
    this.child,
    this.rippleBorderRadius,
    this.padding,
    this.margin,
    this.alignment,
    this.rippleColor,
  });

  @protected
  Widget childContainer(BuildContext context, Widget? child);

  @protected
  Widget decoratorContainer(BuildContext context, Widget child);

  @override
  Widget build(BuildContext context) {
    return decoratorContainer(
      context,
      Material(
        color: Colors.transparent,
        child: InkWell(
          highlightColor: rippleColor ?? Colors.black26,
          splashColor: (rippleColor ?? Colors.black38).withOpacity(.5),
          borderRadius: rippleBorderRadius ?? BorderRadius.circular(8),
          onTap: onTap,
          child: childContainer(context, child),
        ),
      ),
    );
  }
}

/// A simple implementation of [RippleWrapper] that uses a [Container] as its child.
class Ripplify extends RippleWrapper {
  const Ripplify({
    super.key,
    super.onTap,
    super.height,
    super.width,
    super.decoration,
    super.child,
    super.rippleBorderRadius,
    super.padding,
    super.margin,
    super.rippleColor,
    super.alignment,
  });

  @override
  Widget childContainer(BuildContext context, Widget? child) {
    return Container(
      padding: padding,
      height: height,
      width: width,
      alignment: alignment,
      child: child,
    );
  }

  @override
  Widget decoratorContainer(BuildContext context, Widget child) {
    return Container(
      decoration: decoration,
      margin: margin,
      child: child,
    );
  }
}
