import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.icon,
    required this.backgroundColor,
    this.showBadge = false,
  });

  final IconData icon;
  final Color backgroundColor;
  final bool showBadge;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            size: 16,
            color: Colors.white,
          ),
        ),
        if (showBadge)
          Positioned(
              top: -3,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3)),
                width: 13,
                height: 13,
              ))
      ],
    );
  }
}
