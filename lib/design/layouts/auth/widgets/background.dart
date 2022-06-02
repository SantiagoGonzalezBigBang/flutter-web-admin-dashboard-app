import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildBoxDecoration(),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400.0),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Image(
              image: AssetImage('twitter-white-logo.png'),
              width: 400,
            ),
          )
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('twitter-bg.png'),
        fit: BoxFit.cover
      )
    );
  }
}