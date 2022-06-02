part of 'navbar.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        'https://dl.airtable.com/DH4ROlhgSVG6TpXY0xrI_large_Joel-Monegro-pic-458x458.jpg?ts=1650139214&userId=usreMBMOZRVsZBlmd&cs=763b66ff04ee1f94',
        width: 30.0,
        height: 30.0,
      ),
    );
  }
}