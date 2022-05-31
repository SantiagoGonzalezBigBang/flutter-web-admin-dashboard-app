import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key, 
    required this.onPressed, 
    required this.text, 
    this.color = Colors.blue,  
    this.isFilled = false,  
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String text;
  final Color color;
  final bool isFilled;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))
        ),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(color: color)
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          isFilled ? color.withOpacity(0.3) : Colors.transparent
        ),        
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16.0
          ),
        ),
      )
    );
  }
}