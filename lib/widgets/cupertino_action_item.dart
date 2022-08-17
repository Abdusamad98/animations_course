import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionItem extends StatelessWidget {
  const CupertinoActionItem(
      this.onTap,
      this.text,
      this.textColor, {
        super.key, required this.buttonColor,
      });

  final VoidCallback onTap;
  final String text;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color:buttonColor,
      child: CupertinoActionSheetAction(
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'sf_regular',
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
