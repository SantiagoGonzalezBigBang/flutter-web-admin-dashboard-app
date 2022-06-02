import 'package:flutter/material.dart';

import 'package:admin_dashboard/providers/providers.dart';
import 'package:admin_dashboard/design/widgets/widgets.dart';

class DashboardLayout extends StatefulWidget {
  const DashboardLayout({
    Key? key, 
    required this.child
  }) : super(key: key);

  final Widget child;

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    SidebarProvider.animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300)
    );
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffEDF1F2),
      body: Stack(
        children: [          
          Row(
            children: [
              if (size.width >= 700) const Sidebar(),
              Expanded(
                child: Column(
                  children: [
                    const Navbar(),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                        child: widget.child,
                      )
                    ),
                  ], 
                ),
              )
            ],
          ),
          if (size.width < 700) AnimatedBuilder(
            animation: SidebarProvider.animationController, 
            builder: (context, child) {
              return Stack(
                children: [
                  if (SidebarProvider.isOpen) Opacity(
                    opacity: SidebarProvider.opacityAnimation.value,
                    child: GestureDetector(
                      onTap: SidebarProvider.closeMenu,
                      child: Container(
                        width: size.width,
                        height: size.height,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(SidebarProvider.movementAnimation.value, 0.0),
                    child: child
                  ),
                ],
              );
            },
            child: const Sidebar()
          )
        ],
      )
    );
  }
}