import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonMargin,
    this.fontSize = 16,
    this.textStyle,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback onPressed;
  final double? buttonHeight;
  final double? buttonWidth;
  final EdgeInsetsGeometry? buttonMargin;
  final double fontSize;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 20, 5, 20),
        margin: buttonMargin,
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 2),
            ),
          ],
          border: Border.all(
            color: Colors.blueAccent.shade700,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: textStyle ?? TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
