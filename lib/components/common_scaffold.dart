import 'package:flutter/material.dart';
import 'package:students/generated/assets.gen.dart';
import 'package:students/screens/dashboard/widgets/common_header.dart';
import 'package:students/screens/dashboard/widgets/contact_info_widget.dart';
import 'package:students/utils/app_colors.dart';

class CommonScaffold extends StatefulWidget {
  const CommonScaffold({
    super.key,
    this.haveReverseButton = true,
    required this.body,
  });

  final bool haveReverseButton;
  final Widget body;

  @override
  State<CommonScaffold> createState() => _CommonScaffoldState();
}

class _CommonScaffoldState extends State<CommonScaffold> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backGround,
        body: Column(
          children: [
            CommonHeader(
              haveReverseButton: widget.haveReverseButton,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: _leftBanner(),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: widget.body,
                          ),
                        ),
                        Expanded(
                          child: _rightBanner(),
                        ),
                      ],
                    ),
                    const ContactInfoWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _leftBanner() {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Image.asset(Assets.images.bannerLeft.path),
          Image.asset(Assets.images.bannerLeft2.path),
          Image.asset(Assets.images.bannerLeft3.path),
        ],
      ),
    );
  }

  Widget _rightBanner() {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          Image.asset(Assets.images.bannerRight1.path),
          Image.asset(Assets.images.bannerRight2.path),
          Image.asset(Assets.images.bannerRight3.path),
        ],
      ),
    );
  }
}
