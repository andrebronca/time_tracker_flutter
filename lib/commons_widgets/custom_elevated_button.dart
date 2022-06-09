import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.child,
    required this.color,
    this.height: 50.0,
    this.borderRadius: 2.0,
    required this.onPressed
  }) : assert(borderRadius != null);

  final Widget child;
  final Color color;
  final double height;
  final double borderRadius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height, //determinando a altura do botão
      child: ElevatedButton(
        child: child,
        style: ButtonStyle(
          //foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius),
              ),
              side: BorderSide(color: Colors.white10),
            ),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}

/*
child: Text(
        'Sign in with Google',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
Radius.circular(4.0),
 */
