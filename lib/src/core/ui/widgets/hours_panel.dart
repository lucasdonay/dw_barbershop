import 'package:dw_barbershop/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

class HoursPanel extends StatelessWidget {
  final int startTime, endTime;

  final ValueChanged<int> onHourPressed;
  const HoursPanel({
    super.key,
    required this.startTime,
    required this.endTime,
    required this.onHourPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Selecione os horários de atendimento',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Wrap(
              spacing: 5,
              runSpacing: 10,
              children: [
                for (int i = startTime; i <= endTime; i++)
                  TimeButton(
                    label: '${i.toString().padLeft(2, '0')}:00',
                    onPressed: onHourPressed,
                    value: i,
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TimeButton extends StatefulWidget {
  const TimeButton(
      {super.key,
      required this.onPressed,
      required this.label,
      required this.value});

  final int value;
  final String label;
  final ValueChanged<int> onPressed;

  @override
  State<TimeButton> createState() => _TimeButtonState();
}

class _TimeButtonState extends State<TimeButton> {
  var selected = false;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = selected ? ColorsConstants.brow : Colors.white;
    final textColor = selected ? Colors.white : Colors.black;

    return InkWell(
      onTap: () {
        setState(() {
          widget.onPressed(widget.value);
          selected = !selected;
        });
      },
      child: Container(
        width: 64,
        height: 36,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: ColorsConstants.grey,
          ),
        ),
        child: Center(
          child: Text(widget.label,
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w500, color: textColor)),
        ),
      ),
    );
  }
}
