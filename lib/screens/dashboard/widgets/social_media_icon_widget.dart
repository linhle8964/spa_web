import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:students/generated/assets.gen.dart';

class SocialMediaIconWidget extends StatefulWidget {
  const SocialMediaIconWidget({
    super.key,
    required this.assetGenImage,
    required this.url,
  });

  final AssetGenImage assetGenImage;
  final String url;

  @override
  State<SocialMediaIconWidget> createState() => _SocialMediaIconWidgetState();
}

class _SocialMediaIconWidgetState extends State<SocialMediaIconWidget> {
  bool isHoover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: isHoover ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(8)
      ),
      child: MouseRegion(
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
        child: GestureDetector(
          onTap: () {
            js.context.callMethod('open', [widget.url]);
          },
          child: Image.asset(
            widget.assetGenImage.path,
            height: 32,
            width: 32,
          ),
        ),
      ),
    );
  }
}
