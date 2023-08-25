import 'package:dw_barbershop/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

class WeekdaysPanel extends StatelessWidget {
  const WeekdaysPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Selecione os dias',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonDay(label: 'Seg'),
              ButtonDay(label: 'Terc'),
              ButtonDay(label: 'Qua'),
              ButtonDay(label: 'Qui'),
              ButtonDay(label: 'Sex'),
              ButtonDay(label: 'Sab'),
              ButtonDay(label: 'Dom'),
            ],
          ),
        )
      ],
    );
  }
}

class ButtonDay extends StatelessWidget {
  const ButtonDay({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(
          color: ColorsConstants.greyLight,
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 14,
              color: ColorsConstants.grey,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
