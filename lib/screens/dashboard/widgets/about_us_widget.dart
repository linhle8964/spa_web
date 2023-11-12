import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:students/common/core/routes.dart';
import 'package:students/components/app_text_style.dart';
import 'package:students/generated/assets.gen.dart';
import 'package:students/generated/l10n.dart';
import 'package:students/utils/app_colors.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({
    super.key,
    required this.aboutKey,
  });

  final GlobalKey aboutKey;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      key: aboutKey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _image(),
          _text(context),
        ],
      ),
    );
  }

  Widget _image() {
    return Expanded(child: Image.asset(Assets.images.aboutUsImage.path));
  }

  Widget _text(BuildContext context) {
    return Expanded(
        child: Container(
      color: AppColors.backGround2,
      padding: const EdgeInsets.all(20),
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            L10n.of(context).About,
            style: AppTextStyle.extraLarge,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
            style: AppTextStyle.regular,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
            style: AppTextStyle.regular,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
            style: AppTextStyle.regular,
          ),
          SizedBox(
            height: 16,
          ),
          TextButton(
            onPressed: () {
              context.go('/${Routes.aboutUsScreen}');
            },
            child: Text(
              '>> ${L10n.of(context).read_more}',
              style: AppTextStyle.medium.copyWith(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
