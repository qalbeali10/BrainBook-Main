import 'package:brainbook/core/theme/values/colors.dart';
import 'package:flutter/material.dart';

class FrontPlateRichText extends StatelessWidget {
  const FrontPlateRichText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "•  ",
            style: TextStyle(color: fontColorLight, fontSize: 22),
            children: <TextSpan>[
          TextSpan(
            text: text,
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ]));
  }
}
