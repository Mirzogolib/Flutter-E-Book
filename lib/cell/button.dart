import 'package:flutter/material.dart';
import 'package:volleyball/theme/style.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onTap;
  final Color color;
  final IconData icon;
  const Button({
    this.text,
    this.onTap,
    this.color,
    this.icon,
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
      color: color == null ? Style.colors.primary : color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: icon == null
          ? Text(
              text,
              textAlign: TextAlign.center,
              style: Style.button.copyWith(color: Style.colors.white),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Style.colors.white,
                ),
                const SizedBox(width: 16),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: Style.button.copyWith(color: Style.colors.white),
                )
              ],
            ),
    );
  }
}
