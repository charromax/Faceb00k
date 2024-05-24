import 'package:first_flutter_app/facebook_ui/widgets/appbar_button.dart';
import 'package:flutter/material.dart';

class QuickActionsButton extends StatelessWidget {
  const QuickActionsButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.icon,
  });

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.only(right: 25),
      child: Row(
        children: [
          CustomButton(
            icon: icon,
            backgroundColor: textColor.withOpacity(.2),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
