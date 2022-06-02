import 'package:flutter/material.dart';

import 'package:admin_dashboard/design/widgets/widgets.dart';
import 'package:admin_dashboard/design/custom_text_styles/custom_text_styles.dart';

class BlankView extends StatelessWidget {
  const BlankView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        Text(
          'Blank',
          style: CustomTextStyles.h1
        ),
        const SizedBox(height: 10.0,),
        const WhiteCard(
          title: 'Blank View',
          child: Text('Hola Mundo!!!')
        )
      ],
    );
  }
}