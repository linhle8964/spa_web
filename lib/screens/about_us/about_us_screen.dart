import 'package:flutter/material.dart';
import 'package:students/components/app_text_style.dart';
import 'package:students/components/common_scaffold.dart';
import 'package:students/generated/l10n.dart';
import 'package:students/screens/about_us/widgets/about_us_list_view.dart';
import 'package:students/screens/about_us/widgets/about_us_video.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: Column(
        children: [
          const AboutUsVideo(),
          Text(
            L10n.of(context).About,
            style: AppTextStyle.extraLarge,
          ),
          const AboutUsListView(),
        ],
      ),
    );
  }
}
