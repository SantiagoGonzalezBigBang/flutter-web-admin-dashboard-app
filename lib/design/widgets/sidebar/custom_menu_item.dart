part of 'sidebar.dart';

class CustomMenuItem extends StatefulWidget {
  const CustomMenuItem({
    Key? key, 
    required this.text, 
    required this.icon, 
    this.isActive = false, 
    required this.onTap
  }) : super(key: key);

  final String text;
  final IconData icon;
  final bool isActive;
  final GestureTapCallback? onTap;

  @override
  State<CustomMenuItem> createState() => _CustomMenuItemState();
}

class _CustomMenuItemState extends State<CustomMenuItem> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      color: isHover 
        ? Colors.white.withOpacity(0.1) 
        : widget.isActive ? Colors.white.withOpacity(0.1) : Colors.transparent,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.isActive ? null : widget.onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: MouseRegion(
              onEnter: (event) => setState(() => isHover = true),
              onExit : (event) => setState(() => isHover = false),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    widget.icon,
                    color: Colors.white.withOpacity(0.3),
                  ),
                  const SizedBox(width: 10.0,),
                  Text(
                    widget.text,
                    style: GoogleFonts.roboto(
                      fontSize: 16.0,
                      color: Colors.white.withOpacity(0.8)
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}