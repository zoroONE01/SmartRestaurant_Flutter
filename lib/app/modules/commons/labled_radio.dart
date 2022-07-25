import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_restaurant_flutter/app/data/constants/app_colors.dart';

class LabeledRadio extends StatefulWidget {
  const LabeledRadio({
    Key? key,
    required this.label,
    required this.padding,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final EdgeInsets padding;
  final int groupValue;
  final int value;
  final ValueChanged<int?> onChanged;

  @override
  State<LabeledRadio> createState() => _LabeledRadioState();
}

class _LabeledRadioState extends State<LabeledRadio> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.value != widget.groupValue) {
          widget.onChanged(widget.value);
        }
      },
      child: Padding(
        padding: widget.padding,
        child: Row(
          children: <Widget>[
            Radio<int>(
              activeColor: AppColors.yellowOrange,
              groupValue: widget.groupValue,
              value: widget.value,
              onChanged: (int? newValue) {
                setState(() {
                  widget.onChanged(newValue);
                });
              },
            ),
            Text(widget.label, style: GoogleFonts.comfortaa(
                fontWeight: FontWeight.w700,
                color: AppColors.blackEerie,
                fontSize: 16),),
          ],
        ),
      ),
    );
  }
}
