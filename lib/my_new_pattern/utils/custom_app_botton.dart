import 'package:flutter/material.dart';


class CustomAppButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;
  final double? buttonWidth;
  final double? borderRadius;
  final double? buttonHeight;
  final double? textHeight;

  /// 🔹 New optional parameters
  final bool isLoading;
  final bool isDisabled;

  const CustomAppButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.color,
    this.textColor,
    this.buttonHeight,
    this.textHeight,
    this.buttonWidth,
    this.borderRadius,
    this.isLoading = false,
    this.isDisabled = false,
  }) : super(key: key);

  @override
  State<CustomAppButton> createState() => _CustomAppButtonState();
}

class _CustomAppButtonState extends State<CustomAppButton> {
  @override
  Widget build(BuildContext context) {
    final bool isButtonInactive = widget.isLoading || widget.isDisabled;

    return GestureDetector(
      onTap: isButtonInactive ? () {} : widget.onPressed,
      child: Container(
        height: (widget.buttonHeight ?? 44),
        width: widget.buttonWidth ?? MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: ShapeDecoration(
          color: isButtonInactive
              ? Colors.grey.shade400
              : (widget.color ?? Colors.red),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 0.5,
              strokeAlign: BorderSide.strokeAlignCenter,
              color: Colors.yellow,
            ),
            borderRadius: BorderRadius.circular(
              (widget.borderRadius ?? 25),
            ),
          ),
        ),
        child: Center(
          child: widget.isLoading
              ? const SizedBox(
            height: 18,
            width: 18,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: Colors.white,
            ),
          )
              : Text(
            widget.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: widget.textColor ?? Colors.white,
              fontSize: widget.textHeight ?? 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'Arial',
            ),
          ),
        ),
      ),
    );
  }
}
