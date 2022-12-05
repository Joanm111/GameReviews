import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final VoidCallback? onPreseed;

  const CustomizedButton(
      {super.key,
      this.buttonText,
      this.buttonColor,
      this.onPreseed,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onPreseed,
        child: Container(
          height: 80,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: buttonColor,
              border: Border.all(width: 1, color: Color.fromARGB(255, 0, 0, 0)),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            buttonText!,
            style: TextStyle(color: textColor, fontSize: 20),
          )),
        ),
      ),
    );
  }
}
