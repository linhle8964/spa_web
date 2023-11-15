import 'package:flutter/material.dart';

class CommonHooverButton extends StatefulWidget {
  const CommonHooverButton({
    super.key,
    required this.child,
    this.hooverColor = Colors.white,
  });

  final Widget child;
  final Color hooverColor;

  @override
  State<CommonHooverButton> createState() => _CommonHooverButtonState();
}

class _CommonHooverButtonState extends State<CommonHooverButton> {
  bool isHoover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onExit: (value) {
        setState(() {
          isHoover = false;
        });
      },
      onHover: (value) {
        setState(() {
          isHoover = true;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isHoover ? widget.hooverColor : Colors.transparent,
        ),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: widget.child,
      ),
    );
  }
}
