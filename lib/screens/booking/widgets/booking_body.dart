import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:students/components/app_text_style.dart';
import 'package:students/components/common_button.dart';
import 'package:students/components/show_dialog_btn.dart';
import 'package:students/generated/l10n.dart';
import 'package:students/screens/booking/booking_state_notifier.dart';
import 'package:students/utils/app_colors.dart';
import 'package:students/utils/date_time_util.dart';

class BookingBody extends ConsumerWidget {
  const BookingBody({
    super.key,
    required this.nameController,
    required this.phoneController,
    required this.formKey,
  });

  final TextEditingController nameController;
  final TextEditingController phoneController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(bookingProvider.select((value) => value.date)) ??
        DateTime.now();

    return Column(
      children: [
        Text(
          L10n.of(context).reverse,
          style: AppTextStyle.extraLarge,
        ),
        const SizedBox(
          height: 64,
        ),
        TextFormField(
          controller: nameController,
          decoration: InputDecoration(
            hintText: L10n.of(context).please_enter_your_name_here,
            hintStyle: AppTextStyle.medium.copyWith(
              color: AppColors.greyCACACA,
            ),
            labelText: L10n.of(context).full_name,
            labelStyle: AppTextStyle.large,
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return L10n.of(context).required_field_msg;
            }
            return null;
          },
        ),
        const SizedBox(height: 32),
        TextFormField(
          controller: phoneController,
          decoration: InputDecoration(
            hintText: L10n.of(context).please_enter_your_phone_here,
            hintStyle: AppTextStyle.medium.copyWith(
              color: AppColors.greyCACACA,
            ),
            labelText: L10n.of(context).phone,
            labelStyle: AppTextStyle.large,
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return L10n.of(context).required_field_msg;
            }
            return null;
          },
        ),
        const SizedBox(height: 32),
        Row(
          children: [
            Expanded(
              child: ShowDialogBtn(
                title: L10n.of(context).reverse_date,
                selectedValue: DateTimeUtil.formatDMY(date),
                onTap: () async {
                  final result = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(
                      const Duration(days: 30),
                    ),
                  );

                  if (result != null) {
                    ref.read(bookingProvider.notifier).updateDate(result);
                  }
                },
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: ShowDialogBtn(
                title: L10n.of(context).reverse_time,
                selectedValue: DateTimeUtil.formatHHMM(date),
                onTap: () async {
                  final result = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay(
                      hour: date.hour,
                      minute: date.minute,
                    ),
                  );

                  if (result != null) {
                    ref.read(bookingProvider.notifier).updateTime(result);
                  }
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 32),
        CommonButton(
          onTap: () {
            // Validate returns true if the form is valid, or false otherwise.
            if (formKey.currentState!.validate()) {
              // If the form is valid, display a snackbar. In the real world,
              // you'd often call a server or save the information in a database.
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    L10n.of(context).booking_success,
                    style: AppTextStyle.medium.copyWith(color: Colors.white),
                  ),
                  backgroundColor: Colors.green,
                ),
              );
              context.pop();
            }
          },
          width: MediaQuery.of(context).size.width * 0.25,
          label: L10n.of(context).submit,
        ),
      ],
    );
  }
}
