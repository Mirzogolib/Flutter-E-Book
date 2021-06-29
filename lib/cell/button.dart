import 'package:flutter/material.dart';
import 'package:sport_pedagogikasi/theme/style.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onTap;
  const Button({
    this.text,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      elevation: 0,
      highlightElevation: 0,
      height: 48,
      padding: Style.padding12,
      color: Style.colors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Style.button.copyWith(color: Style.colors.white),
      ),
    );
  }
}
