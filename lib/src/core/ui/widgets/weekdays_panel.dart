import 'package:dw_barbershop/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

class WeekdaysPanel extends StatelessWidget {
  const WeekdaysPanel({super.key, required this.openDayPressed});
  final ValueChanged<String> openDayPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Selecione os dias',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonDay(label: 'Seg', openDaySelect: openDayPressed),
                ButtonDay(label: 'Terc', openDaySelect: openDayPressed),
                ButtonDay(label: 'Qua', openDaySelect: openDayPressed),
                ButtonDay(label: 'Qui', openDaySelect: openDayPressed),
                ButtonDay(label: 'Sex', openDaySelect: openDayPressed),
                ButtonDay(label: 'Sab', openDaySelect: openDayPressed),
                ButtonDay(label: 'Dom', openDaySelect: openDayPressed),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ButtonDay extends StatefulWidget {
  const ButtonDay({
    super.key,
    required this.label,
    required this.openDaySelect,
  });

  final String label;
  final ValueChanged<String> openDaySelect;

  @override
  State<ButtonDay> createState() => _ButtonDayState();
}

class _ButtonDayState extends State<ButtonDay> {
  var selected = false;
  @override
  Widget build(BuildContext context) {
    final backgroundColor = selected ? ColorsConstants.brow : Colors.white;
    final textColor = selected ? Colors.white : ColorsConstants.greyLight;

    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          setState(() {
            widget.openDaySelect(widget.label);
            selected = !selected;
          });
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: backgroundColor,
            border: Border.all(
              color: ColorsConstants.greyLight,
            ),
          ),
          child: Center(
            child: Text(
              widget.label,
              style: TextStyle(
                fontSize: 14,
                color: textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
