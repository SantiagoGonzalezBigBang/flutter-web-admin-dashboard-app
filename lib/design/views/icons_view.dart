import 'package:flutter/material.dart';

import 'package:admin_dashboard/design/widgets/widgets.dart';
import 'package:admin_dashboard/design/custom_text_styles/custom_text_styles.dart';

class IconsView extends StatelessWidget {
  const IconsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        Text(
          'Icons',
          style: CustomTextStyles.h1
        ),
        const SizedBox(height: 10.0,),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          children: const [
            WhiteCard(
              title: 'ac_unit_outlined',
              width: 170.0,
              child: Center(
                child: Icon(
                  Icons.ac_unit_outlined
                )
              )
            ),
            WhiteCard(
              title: 'access_alarm_outlined',
              width: 170.0,
              child: Center(
                child: Icon(
                  Icons.access_alarm_outlined
                )
              )
            ),
            WhiteCard(
              title: 'access_time_rounded',
              width: 170.0,
              child: Center(
                child: Icon(
                  Icons.access_time_rounded
                )
              )
            ),
            WhiteCard(
              title: 'all_inbox_outlined',
              width: 170.0,
              child: Center(
                child: Icon(
                  Icons.all_inbox_outlined
                )
              )
            ),
            WhiteCard(
              title: 'desktop_mac_sharp',
              width: 170.0,
              child: Center(
                child: Icon(
                  Icons.desktop_mac_sharp
                )
              )
            ),
            WhiteCard(
              title: 'keyboard_tab_rounded',
              width: 170.0,
              child: Center(
                child: Icon(
                  Icons.keyboard_tab_rounded
                )
              )
            ),
            WhiteCard(
              title: 'not_listed_location',
              width: 170.0,
              child: Center(
                child: Icon(
                  Icons.not_listed_location
                )
              )
            ),
          ],
        )
      ],
    );
  }
}