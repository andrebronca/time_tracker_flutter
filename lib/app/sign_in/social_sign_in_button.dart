import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/commons_widgets/custom_elevated_button.dart';

//assert stops execution if a boolean condition is false
//require specifies that a property must be included
class SocialSignInButton extends CustomElevatedButton {
  SocialSignInButton({
    required String assetName,
    required String text,
    required Color textColor,
    required Color color,
    required VoidCallback onPressed,
    double borderRadius: 4.0,
  }) : assert(assetName != null),
        assert(text != null),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset(assetName),
              ),
            ],
          ),
          color: color,
          borderRadius: borderRadius,
          onPressed: onPressed,
        );
}
