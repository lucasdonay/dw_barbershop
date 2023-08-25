import 'package:flutter/material.dart';

class HoursPanel extends StatelessWidget {
  const HoursPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Teste'),
        const SizedBox(
          height: 16,
        ),
        Wrap(
          children: [
            Container(
              width: 56,
              height: 40,
              decoration: const BoxDecoration(),
              child: const Center(
                child: Text('00'),
              ),
            )
          ],
        )
      ],
    );
  }
}
