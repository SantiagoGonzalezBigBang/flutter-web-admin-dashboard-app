import 'package:flutter/material.dart';

import 'package:admin_dashboard/ui/layouts/auth/widgets/widgets.dart';

class AuthLayout extends StatelessWidget {
   
  const AuthLayout({
    Key? key, 
    required this.child
  }) : super(key: key);

  final Widget child;
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Scrollbar(
        // thumbVisibility: true,        
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            (size.width > 1000)
             ? _LargeBody(child: child)
             : _SmallBody(child: child),
            const LinksBar()
          ],
        ),
      ) 
    );
  }
}

class _SmallBody extends StatelessWidget {
  const _SmallBody({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20.0),
          const CustomTitle(),
          SizedBox(
            width: double.infinity,
            height: 420.0,
            child: child,
          ),
          const SizedBox(
            width: double.infinity,
            height: 400.0,
            child: Background(),
          )
        ],
      ),
    );
  }
}

class _LargeBody extends StatelessWidget {
  const _LargeBody({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height * 0.935,
      child: Row(
        children: [
          const Background(),
          Container(
            width: 600,
            height: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                const SizedBox(height: 20.0,),
                const CustomTitle(),
                const SizedBox(height: 50.0),
                Expanded(
                  child: child,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

