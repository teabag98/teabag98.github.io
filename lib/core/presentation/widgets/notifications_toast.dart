import 'package:fl_discover_dashboard/core/platform/size_config.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:sizer/sizer.dart';

enum NotificationType {
  SUCCESS,
  FAIL,
  WARN,
  INFO,
}

class NotificationToast {
  // Notification builder
  static void buildNotification({
    required BuildContext context,
    required NotificationType type,
    required String msg,
  }) {
    final _sc = SizeConfig(context: context);

    switch (type) {
      case NotificationType.WARN:
        showToastWidget(
          Container(
            // height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: _sc.heightScaledSize(8),
              vertical: _sc.heightScaledSize(8),
            ),
            margin: EdgeInsets.symmetric(horizontal: 5.0.w),
            child: Text(
              msg,
            ),
          ),
          context: context,
          duration: const Duration(seconds: 2),
          position: ToastPosition.top,
          dismissOtherToast: true,
          animationCurve: Curves.easeOutSine,
        );
        return;

      case NotificationType.FAIL:
        showToastWidget(
          Container(
            // height: 45,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: _sc.heightScaledSize(8),
              vertical: _sc.heightScaledSize(8),
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.symmetric(horizontal: 5.0.w),
            child: Text(
              msg,
            ),
          ),
          context: context,
          duration: const Duration(seconds: 2),
          position: ToastPosition.top,
          dismissOtherToast: true,
          animationCurve: Curves.easeOutSine,
        );
        return;

      case NotificationType.SUCCESS:
        showToastWidget(
          Container(
            // height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: _sc.heightScaledSize(8),
              vertical: _sc.heightScaledSize(8),
            ),
            margin: EdgeInsets.symmetric(horizontal: 5.0.w),
            child: Text(
              msg,
            ),
          ),
          context: context,
          duration: const Duration(seconds: 2),
          position: ToastPosition.top,
          dismissOtherToast: true,
          animationCurve: Curves.easeOutSine,
        );
        return;

      default:
        throw 'Invalid Notification type';
    }
  }
}
