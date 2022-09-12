import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 85.0
    ..radius = 10.0
    ..progressColor = Colors.white
    ..backgroundColor = Colors.transparent
    ..indicatorColor = Colors.white
    ..textColor = Colors.white
    ..maskColor = Colors.black
    ..userInteractions = false
    ..dismissOnTap = false
    ..customAnimation = CustomAnimation()
    ..textStyle = const TextStyle(
      color: Colors.white,
      // fontSize: 12,
    )
    ..maskType = EasyLoadingMaskType.black;
}

class CustomAnimation extends EasyLoadingAnimation {
  CustomAnimation();

  @override
  Widget buildWidget(
    Widget child,
    AnimationController? controller,
    AlignmentGeometry alignment,
  ) {
    final double opacity = controller?.value ?? 0;
    return Opacity(
      opacity: opacity,
      child: RotationTransition(
        turns: controller!,
        child: child,
      ),
    );
  }
}
