import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:students/components/common_scaffold.dart';
import 'package:students/screens/booking/booking_state_notifier.dart';
import 'package:students/screens/booking/widgets/booking_body.dart';

class BookingScreen extends ConsumerStatefulWidget {
  const BookingScreen({super.key});

  @override
  ConsumerState createState() => _BookingScreenState();
}

class _BookingScreenState extends ConsumerState<BookingScreen> {
  late TextEditingController phoneController;
  late TextEditingController nameController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    phoneController = TextEditingController();
    nameController = TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(bookingProvider.notifier).initData();

      phoneController.text = ref.read(bookingProvider).phoneNumber;
      nameController.text = ref.read(bookingProvider).username;

      phoneController.addListener(phoneListener);
      nameController.addListener(nameListener);
    });
    super.initState();
  }

  void phoneListener() {
    ref.read(bookingProvider.notifier).updatePhone(phoneController.text);
  }

  void nameListener() {
    ref.read(bookingProvider.notifier).updateName(nameController.text);
  }

  @override
  void dispose() {
    phoneController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      haveReverseButton: false,
      body: Form(
        key: _formKey,
        child: BookingBody(
          nameController: nameController,
          phoneController: phoneController,
          formKey: _formKey,
        ),
      ),
    );
  }
}
