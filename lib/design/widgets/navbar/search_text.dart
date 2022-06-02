part of 'navbar.dart';

class SearchText extends StatelessWidget {
  const SearchText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      decoration: _buildBoxDecoration(),
      child: TextField(
        decoration: Inputs.searchInputDecoration(
          hintText: 'Search', 
          icon: Icons.search_outlined
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.grey.withOpacity(0.1),
    );
  }
}