import 'package:flutter/material.dart';
import 'package:students/generated/assets.gen.dart';
import 'package:students/generated/l10n.dart';

class SpaBannerWidget extends StatelessWidget {
  const SpaBannerWidget({super.key});

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
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(Assets.images.icSpaLogo.path)),
                  ),
                  Expanded(
                    flex: 7,
                    child: Row(
                      children: [
                        _item(
                          text: L10n.of(context).Home,
                        ),
                        _item(
                          text: L10n.of(context).Services,
                        ),
                        _item(
                          text: L10n.of(context).About,
                        ),
                        _item(
                          text: L10n.of(context).Contact,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 90,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      L10n.of(context).banner_title,
                      style: TextStyle(color: Colors.black, fontSize: 32),
                    ),
                    const SizedBox(height: 34),
                    Text(
                      L10n.of(context).banner_content,
                      style: TextStyle(color: Colors.black, fontSize: 16),
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

  Widget _item({required String text, VoidCallback? onTap}) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }
}
