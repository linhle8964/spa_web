import 'package:flutter/material.dart';
import 'package:students/components/app_text_style.dart';

class SpaBannerMenuItem extends StatefulWidget {
  const SpaBannerMenuItem({super.key, required this.text, required this.onTap,});

  final String text;
  final VoidCallback onTap;

  @override
  State<SpaBannerMenuItem> createState() => _SpaBannerMenuItemState();
}

class _SpaBannerMenuItemState extends State<SpaBannerMenuItem> {
  bool isHoover = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MouseRegion(
        onEnter: (value) => widget.onTap,
        child: Text(
          widget.text,
          style: AppTextStyle.large.copyWith(fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
