import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/commons_widgets/custom_elevated_button.dart';

class SignInButton extends CustomElevatedButton {
  SignInButton({
    required String text,
    required Color textColor,
    required Color color,
    required VoidCallback onPressed,
    double borderRadius: 4.0,
  }) : assert(text != null),
        super(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
          color: color,
          borderRadius: borderRadius,
          onPressed: onPressed,
        );
}
