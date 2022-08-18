import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.colors.primary,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            child: Text(label,
                style: context.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: context.colors.onPrimary,
                )),
          )),
    );
  }
}
