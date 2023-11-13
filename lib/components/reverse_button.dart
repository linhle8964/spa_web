import 'package:flutter/material.dart';

class ReverseButton extends StatelessWidget {
  const ReverseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.calendar_month,
        ),
        color: Colors.white,
      ),
    );
  }
}
