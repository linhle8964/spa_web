import 'package:flutter/material.dart';
import 'package:students/components/app_text_style.dart';
import 'package:students/components/reverse_button.dart';
import 'package:students/generated/assets.gen.dart';
import 'package:students/generated/l10n.dart';
import 'package:students/utils/app_colors.dart';

class CommonHeader extends StatelessWidget {
  const CommonHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backGround,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 30, bottom: 90),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Image.asset(Assets.images.icSpaLogo.path, height: 120,)),
          Expanded(child: Text(L10n.of(context).spa_name, style: AppTextStyle.superLarge, textAlign: TextAlign.center,)),
          const Expanded(child: ReverseButton()),
        ],
      ),
    );
  }
}
