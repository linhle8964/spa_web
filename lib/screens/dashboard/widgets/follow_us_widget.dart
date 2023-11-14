import 'package:flutter/material.dart';
import 'package:students/components/app_text_style.dart';
import 'package:students/generated/assets.gen.dart';
import 'package:students/generated/l10n.dart';
import 'package:students/screens/dashboard/widgets/social_media_icon_widget.dart';
import 'package:students/utils/app_constant.dart';

class FollowUsWidget extends StatelessWidget {
  const FollowUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '${L10n.of(context).follow_us_on}:',
            style: AppTextStyle.medium,
          ),
          SocialMediaIconWidget(
            assetGenImage: Assets.socialMediaIcon.icFb,
            url: AppConstants.fbUrl,
          ),
          SocialMediaIconWidget(
            assetGenImage: Assets.socialMediaIcon.icX,
            url: AppConstants.twitterUrl,
          ),
          SocialMediaIconWidget(
            assetGenImage: Assets.socialMediaIcon.icInsta,
            url: AppConstants.instagramUrl,
          ),
          SocialMediaIconWidget(
            assetGenImage: Assets.socialMediaIcon.icYt,
            url: AppConstants.ytUrl,
          ),
        ],
      ),
    );
  }
}
