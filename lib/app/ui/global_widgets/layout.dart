import 'package:flutter/material.dart';

///
/// X-Small	child	<576px
/// Small	sm	≥576px
/// Medium	md	≥768px
/// Large	lg	≥992px
/// Extra large	xl	≥1200px
/// Extra extra large	xxl	≥1400px
///
/// Get from: https://getbootstrap.com/docs/5.0/layout/breakpoints/
///
class Layout extends StatelessWidget {
  const Layout({
    Key? key,
    required this.child,
    this.sm,
    this.md,
    this.lg,
    this.large,
    this.extraLarge,
  }) : super(key: key);

  final Widget child;
  final Widget? sm;
  final Widget? md;
  final Widget? lg;
  final Widget? large;
  final Widget? extraLarge;

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width.toInt();

    if (widthScreen >= 1400) {
      return extraLarge ?? large ?? lg ?? md ?? sm ?? child;
    } else if (widthScreen >= 1200) {
      return large ?? lg ?? md ?? sm ?? child;
    } else if (widthScreen >= 992) {
      return lg ?? md ?? sm ?? child;
    } else if (widthScreen >= 768) {
      return md ?? sm ?? child;
    } else if (widthScreen >= 576) {
      return sm ?? child;
    } else if (widthScreen < 576) {
      return child;
    } else {
      return const SizedBox();
    }
  }
}
