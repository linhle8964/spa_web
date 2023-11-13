import 'package:flutter/material.dart';
import 'package:students/components/app_text_style.dart';
import 'package:students/generated/l10n.dart';
import 'package:students/screens/about_us/widgets/about_us_list_view.dart';
import 'package:students/screens/about_us/widgets/about_us_video.dart';
import 'package:students/screens/dashboard/widgets/common_header.dart';
import 'package:students/screens/dashboard/widgets/contact_info_widget.dart';
import 'package:students/utils/app_colors.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: Column(
        children: [
          const CommonHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const AboutUsVideo(),
                  Text(
                    L10n.of(context).About,
                    style: AppTextStyle.extraLarge,
                  ),
                  const AboutUsListView(),
                  const ContactInfoWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
