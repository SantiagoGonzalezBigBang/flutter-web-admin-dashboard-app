import 'package:flutter/material.dart';

import 'package:admin_dashboard/providers/providers.dart';
import 'package:admin_dashboard/design/inputs/inputs.dart';

part 'notification_indicator.dart';
part 'avatar.dart';
part 'search_text.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: _buildBoxDecoration(),
      child: Row(       
        children: [
          if (size.width < 700) const IconButton(
            onPressed: SidebarProvider.openMenu, 
            icon: Icon(
              Icons.menu_outlined
            )
          ),
          if (size.width > 390) ...[ 
            const SizedBox(width: 5.0,),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 250.0
              ),
              child: const SearchText(),
            ),
          ],
          const Spacer(),
          const NotificationIndicator(),
          const SizedBox(width: 10.0,),
          const Avatar(),
          const SizedBox(width: 10.0,),
        ],
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return const BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 5.0
        )
      ]
    );
  }
}