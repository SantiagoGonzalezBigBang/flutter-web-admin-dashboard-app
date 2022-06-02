part of 'navbar.dart';

class NotificationIndicator extends StatelessWidget {
  const NotificationIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(
          Icons.notifications_none_outlined,
          color: Colors.grey,
        ),
        Positioned(
          left: 2.0,
          child: Container(
            width: 5.0,
            height: 5.0,
            decoration: _buildBoxDecoration(),
          ),
        )
      ],
    );
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(100.0)
  );
}