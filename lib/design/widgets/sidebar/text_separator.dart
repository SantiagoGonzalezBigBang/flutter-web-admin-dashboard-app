part of 'sidebar.dart';

class TextSeparator extends StatelessWidget {
  const TextSeparator({
    Key? key, 
    required this.text
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: const EdgeInsets.only(bottom: 5.0),
      child: Text(
        text,
        style: GoogleFonts.roboto(
          color: Colors.white.withOpacity(0.3),
          fontSize: 12.0
        ),
      ),
    );
  }
}