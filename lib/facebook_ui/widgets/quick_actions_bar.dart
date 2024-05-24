import 'package:first_flutter_app/facebook_ui/widgets/quick_actions_button.dart';
import 'package:flutter/material.dart';

import '../../icons/custom_icons_icons.dart';

class QuickActionsBar extends StatelessWidget {
  const QuickActionsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          children: [
            QuickActionsButton(
              text: "Gallery",
              textColor: Colors.green,
              backgroundColor: Color(0xffCDE5CA),
              icon: CustomIcons.photos,
            ),
            SizedBox(width: 10),
            QuickActionsButton(
              text: "Tag friends",
              textColor: Colors.blue,
              backgroundColor: Color(0xffb8c5e0),
              icon: CustomIcons.user_friends,
            ),
            SizedBox(width: 10),
            QuickActionsButton(
              text: "Live",
              textColor: Colors.red,
              backgroundColor: Color(0xffe5caca),
              icon: CustomIcons.video_camera,
            ),
          ],
        ),
      ),
    );
  }
}
