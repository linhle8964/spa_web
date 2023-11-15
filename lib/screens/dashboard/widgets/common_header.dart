import 'package:flutter/material.dart';
import 'package:students/common/core/routes.dart';
import 'package:students/components/app_text_style.dart';
import 'package:students/components/common_hoover_button.dart';
import 'package:students/components/common_navigator.dart';
import 'package:students/components/reverse_button.dart';
import 'package:students/generated/assets.gen.dart';
import 'package:students/generated/l10n.dart';
import 'package:students/utils/app_colors.dart';

class CommonHeader extends StatelessWidget {
  const CommonHeader({
    super.key,
    this.haveReverseButton = true,
  });

  final bool haveReverseButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backGround2,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              Assets.images.icSpaLogo.path,
              height: 100,
            ),
          ),
          Expanded(
            child: CommonHooverButton(
              child: GestureDetector(
                onTap: () {
                  CommonNavigator.go(context, routeName: Routes.dashboardScreen);
                },
                child: Text(
                  L10n.of(context).spa_name,
                  style: AppTextStyle.extraLarge,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          haveReverseButton
              ? const Expanded(child: ReverseButton())
              : const Spacer(),
        ],
      ),
    );
  }
}
