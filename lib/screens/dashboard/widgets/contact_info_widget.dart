import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:students/components/app_text_style.dart';
import 'package:students/generated/assets.gen.dart';
import 'package:students/generated/l10n.dart';
import 'package:students/screens/dashboard/widgets/follow_us_widget.dart';
import 'package:students/utils/app_colors.dart';
import 'package:students/utils/app_constant.dart';

class ContactInfoWidget extends StatelessWidget {
  const ContactInfoWidget({super.key, this.contactKey});

  final GlobalKey? contactKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: contactKey,
      color: AppColors.backGround2,
      padding: const EdgeInsets.symmetric(vertical: 20),
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _contact(context),
                    _hour(context),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _map(context),
                    const Expanded(child: FollowUsWidget()),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _map(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          js.context.callMethod('open', [AppConstants.locationUrl]);
        },
        child: Container(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            Assets.images.spaLocation.path,
            height: MediaQuery.of(context).size.height * 0.25,
          ),
        ),
      ),
    );
  }

  Widget _contact(BuildContext context) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          L10n.of(context).Contact,
          style: AppTextStyle.large,
        ),
        _contactRow(
            text: '120 west street,200 street Dhaka',
            icon: const Icon(Icons.location_on)),
        _contactRow(
            text: 'info.example@gmail.com', icon: const Icon(Icons.email)),
        _contactRow(text: '+0923793273', icon: const Icon(Icons.phone)),
      ],
    ));
  }

  Widget _contactRow({required String text, required Widget icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 10),
          Text(
            text,
            style: AppTextStyle.regular,
          ),
        ],
      ),
    );
  }

  Widget _hour(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            L10n.of(context).open_hour,
            style: AppTextStyle.large,
          ),
          _hourRow(title: L10n.of(context).mon_to_fri, content: '09 am- 6pm'),
          _hourRow(title: L10n.of(context).sat, content: '10 am- 7pm'),
          _hourRow(title: L10n.of(context).sunday, content: '10 am- 7pm'),
        ],
      ),
    );
  }

  Widget _hourRow({required String title, required String content}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
              child: Text(
            '$title - ',
            style: AppTextStyle.regular,
          )),
          Expanded(
              child: Text(
            content,
            style: AppTextStyle.regular,
          )),
        ],
      ),
    );
  }
}
