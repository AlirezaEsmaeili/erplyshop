import 'package:erplyshop/global/colors.dart';
import 'package:erplyshop/global/text_styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: UiColors.black,
      actions: [
        Center(
          child: Padding(
            padding: EdgeInsets.only(right: 8),
            child: Text(
              'erplyshop',
              style: Styles.whiteRegular16,
            ),
          ),
        ),
      ],
    );
  }


  @override
  // TODO: implement preferredSize
  Size get preferredSize =>Size.fromHeight(50);
}
