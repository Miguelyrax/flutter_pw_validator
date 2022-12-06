import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/Utilities/SizeConfig.dart';

/// ValidationTextWidget that represent style of each one of them and shows as list of condition that you want to the app user
class ValidationTextWidget extends StatelessWidget {
  final Color color;
  final String text;
  final int? value;
  final Color? textColor;
  final IconData activeIcon;
  final TextStyle? textStyle;

  ValidationTextWidget(
      {required this.color, required this.text, required this.value, this.textColor, required this.activeIcon,this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 11),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 10.0,
            child: Icon(
              activeIcon, color: Colors.black, size: 14,),
            backgroundColor: color,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text.replaceFirst("-", value.toString()),
              style:
                  textStyle??TextStyle(fontSize: SizeConfig.width! * 0.04, color: textColor),
            ),
          )
        ],
      ),
    );
  }
}
