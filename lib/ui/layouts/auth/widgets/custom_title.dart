import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'twitter-white-logo.png',
            width: 50.0,
            height: 50.0,
          ),
          const SizedBox(height: 20.0,),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Happening Now',
              style: GoogleFonts.montserratAlternates(
                fontSize: 60.0,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}