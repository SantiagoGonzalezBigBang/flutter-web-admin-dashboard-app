import 'package:flutter/material.dart';

import 'package:admin_dashboard/ui/layouts/auth/widgets/widgets.dart';

class LinksBar extends StatelessWidget {
  const LinksBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      color: Colors.black,
      height: size.width > 1000 ? size.height * 0.065 : null,
      child: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          children: const [
            LinkText(text: 'About'),
            LinkText(text: 'Help Center'),
            LinkText(text: 'Terms of Service'),
            LinkText(text: 'Privacy Policy'),
            LinkText(text: 'Cookie Policy'),
            LinkText(text: 'Ads Info'),
            LinkText(text: 'Blog'),
            LinkText(text: 'Status'),
            LinkText(text: 'Careers'),
            LinkText(text: 'Brand Resources'),
            LinkText(text: 'Advertising'),
            LinkText(text: 'Marketing')
          ],
        ),
      )
    );
  }
}