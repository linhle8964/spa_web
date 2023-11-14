import 'package:flutter/material.dart';
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
                    children: [
                      Row(
                        children: [
                          const Spacer(),
                          Expanded(
                            flex: 3,
                            child: SingleChildScrollView(child: widget.body),
                          ),
                          const Spacer(),
                        ],
                      ),
                      const ContactInfoWidget(),
                    ],
                  ),
                ),),
          ],
        ),
      ),
    );
  }
}
