import 'package:flutter/material.dart';
import 'package:students/components/app_text_style.dart';
import 'package:students/generated/assets.gen.dart';
import 'package:students/generated/l10n.dart';

class ContactInfoWidget extends StatelessWidget {
  const ContactInfoWidget({super.key, required this.contactKey});

  final GlobalKey contactKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: contactKey,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          _logo(context),
          _contact(context),
          _hour(context),
        ],
      ),
    );
  }

  Widget _logo(BuildContext context) {
    return Expanded(child: Column(
      children: [
        Image.asset(Assets.images.icSpaLogo.path),
        const SizedBox(height: 35),
        Text('We don\'t keep our beauty secrets', style: AppTextStyle.regular,),
      ],
    ),);
  }

  Widget _contact(BuildContext context) {
    return Expanded(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(L10n.of(context).Contact, style: AppTextStyle.large,),
        _contactRow(text: '120 west street,200 street Dhaka', icon: const Icon(Icons.location_on)),
        _contactRow(text: 'info.example@gmail.com', icon: const Icon(Icons.email)),
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
          Text(text, style: AppTextStyle.regular,),
        ],
      ),
    );
  }

  Widget _hour(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hours', style: AppTextStyle.large,),
          _hourRow(title: 'Mon to Fri', content: '09 am- 6pm'),
          _hourRow(title: 'Sat', content: '10 am- 7pm'),
          _hourRow(title: 'Sun', content: '10 am- 7pm'),
        ],
      ),
    );
  }

  Widget _hourRow({required String title, required String content}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(child: Text('$title - ', style: AppTextStyle.regular,)),
          Expanded(child: Text(content, style: AppTextStyle.regular,)),
        ],
      ),
    );
  }
}
