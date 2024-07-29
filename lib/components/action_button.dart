import 'package:flutter/material.dart';
import '../constants.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPress;

  const ActionButton({super.key, required this.label, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
            child: Text(
          label,
          style: kLargeButtonTextStyle,
        )),
      ),
    );
  }
}
