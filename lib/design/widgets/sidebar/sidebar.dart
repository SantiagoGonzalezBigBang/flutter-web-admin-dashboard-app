import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:admin_dashboard/providers/providers.dart';
import 'package:admin_dashboard/routes/routes.dart';
import 'package:admin_dashboard/services/services.dart';
import 'package:provider/provider.dart';

part 'custom_menu_item.dart';
part 'logo.dart';
part 'text_separator.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  void pushNamed(String routeName) {
    NavigationService.pushNamed(routeName);
    SidebarProvider.closeMenu();
  }

  @override
  Widget build(BuildContext context) {

    final sidebarProvider = Provider.of<SidebarProvider>(context);    

    return Container(
      width: 200.0,
      height: double.infinity,
      decoration: _buildBoxDecoration(),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          const Logo(),
          const SizedBox(height: 50.0,),
          const TextSeparator(text: 'Main'),
          CustomMenuItem(
            text: 'Dashboard',
            icon: Icons.compass_calibration_outlined,
            isActive: sidebarProvider.currentRouteName == Routes.dashboardRoute,
            onTap: () => pushNamed(Routes.dashboardRoute)
          ),
          CustomMenuItem(
            text: 'Orders',
            icon: Icons.shopping_cart_outlined,
            isActive: false,
            onTap: () {}
          ),
          CustomMenuItem(
            text: 'Analytic',
            icon: Icons.show_chart_outlined,
            isActive: false,
            onTap: () {}
          ),
          CustomMenuItem(
            text: 'Categories',
            icon: Icons.layers_outlined,
            isActive: false,
            onTap: () {}
          ),
          CustomMenuItem(
            text: 'Products',
            icon: Icons.dashboard_outlined,
            isActive: false,
            onTap: () {}
          ),
          CustomMenuItem(
            text: 'Discount',
            icon: Icons.attach_money_outlined,
            isActive: false,
            onTap: () {}
          ),
          CustomMenuItem(
            text: 'Customers',
            icon: Icons.people_alt_outlined,
            isActive: false,
            onTap: () {}
          ),
          const SizedBox(height: 30.0,),
          const TextSeparator(text: 'UI Elements'),
          CustomMenuItem(
            text: 'Icons',
            icon: Icons.list_alt_outlined,
            isActive: sidebarProvider.currentRouteName == Routes.iconsRoute,
            onTap: () => pushNamed(Routes.iconsRoute)
          ),
          CustomMenuItem(
            text: 'Marketing',
            icon: Icons.mark_email_read_outlined,
            isActive: false,
            onTap: () {}
          ),
          CustomMenuItem(
            text: 'Campaign',
            icon: Icons.note_add_outlined,
            isActive: false,
            onTap: () {}
          ),
          CustomMenuItem(
            text: 'Black',
            icon: Icons.post_add_outlined,
            isActive: sidebarProvider.currentRouteName == Routes.blankRoute,
            onTap: () => pushNamed(Routes.blankRoute)
          ),
          const SizedBox(height: 30.0,),
          const TextSeparator(text: 'Exit'),
          CustomMenuItem(
            text: 'Logout',
            icon: Icons.exit_to_app_outlined,
            isActive: false,
            onTap: () {}
          ),
        ],
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xff092044),
          Color(0xff092043),
        ]
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0
        )
      ]
    );
  }
}