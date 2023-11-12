import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:students/common/core/routes.dart';
import 'package:students/components/app_text_style.dart';
import 'package:students/generated/assets.gen.dart';
import 'package:students/generated/l10n.dart';
import 'package:students/screens/dashboard/widgets/spa_banner_menu_item.dart';

class SpaBannerWidget extends StatelessWidget {
  const SpaBannerWidget({
    super.key,
    required this.scrollController,
    required this.serviceKey,
    required this.aboutKey,
    required this.contactKey,
  });

  final ScrollController scrollController;
  final GlobalKey serviceKey;
  final GlobalKey aboutKey;
  final GlobalKey contactKey;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.images.bannerImage.path,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 56, horizontal: 90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        Assets.images.icSpaLogo.path,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Row(
                      children: [
                        SpaBannerMenuItem(
                          text: L10n.of(context).Home,
                          onTap: () {
                            context.go('/${Routes.dashboardScreen}');
                          },
                        ),
                        SpaBannerMenuItem(
                            text: L10n.of(context).Services,
                            onTap: () {
                              ensureVisible(serviceKey.currentContext);
                            }),
                        SpaBannerMenuItem(
                            text: L10n.of(context).About,
                            onTap: () {
                              ensureVisible(aboutKey.currentContext);
                            }),
                        SpaBannerMenuItem(
                            text: L10n.of(context).Contact,
                            onTap: () {
                              ensureVisible(contactKey.currentContext);
                            }),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      L10n.of(context).banner_title,
                      style: AppTextStyle.extraLarge,
                    ),
                    const SizedBox(height: 34),
                    Text(
                      L10n.of(context).banner_content,
                      style: AppTextStyle.medium,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  void ensureVisible(BuildContext? context) {
    if (context == null) {
      return;
    }

    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }
}
