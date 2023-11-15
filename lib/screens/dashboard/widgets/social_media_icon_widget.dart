import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:students/components/common_hoover_button.dart';
import 'package:students/generated/assets.gen.dart';


class SocialMediaIconWidget extends StatelessWidget {
  const SocialMediaIconWidget({super.key,
    required this.assetGenImage,
    required this.url,});

  final AssetGenImage assetGenImage;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: CommonHooverButton(child: GestureDetector(
        onTap: () {
          js.context.callMethod('open', [url]);
        },
        child: Image.asset(
          assetGenImage.path,
          height: 32,
          width: 32,
        ),
      )),
    );
  }
}