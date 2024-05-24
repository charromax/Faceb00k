import 'package:first_flutter_app/facebook_ui/widgets/appbar_button.dart';
import 'package:first_flutter_app/icons/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class FacebookAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      leading: SvgPicture.asset(
        'assets/logo/facebook.svg',
        color: Colors.blueAccent,
        width: 150,
        semanticsLabel: 'Facebook Logo',
      ),
      leadingWidth: 150,
      actions: const [
        CustomButton(
          icon: CustomIcons.search,
          backgroundColor: Colors.grey,
        ),
        SizedBox(
          width: 15,
        ),
        CustomButton(icon: CustomIcons.bell, backgroundColor: Colors.red),
        SizedBox(
          width: 15,
        ),
        CustomButton(
          icon: CustomIcons.user_friends,
          backgroundColor: Colors.lightBlue,
          showBadge: true,
        ),
        SizedBox(
          width: 15,
        ),
        CustomButton(
            icon: CustomIcons.messenger, backgroundColor: Colors.blueAccent),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
