import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';

class AuthInputField extends StatelessWidget {
  const AuthInputField(
      {Key? key,
      required this.controller,
      required this.label,
      required this.hint,
      required this.validator,
      this.hideText = false,
      this.isDigit = false})
      : super(key: key);

  final TextEditingController controller;
  final String label;
  final String hint;
  final FormFieldValidator<String> validator;
  final bool hideText;
  final bool isDigit;

  @override
  Widget build(BuildContext context) {
    // List<TextInputFormatter>?
    // isDigit ?
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
        validator: validator,
        obscureText: hideText,
        inputFormatters: [
          isDigit
              ? FilteringTextInputFormatter.digitsOnly
              : FilteringTextInputFormatter.singleLineFormatter
        ],
        style: context.textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.w700,
          color: context.colors.onSurface,
        ),
        decoration: InputDecoration(
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.colors.error,
              width: 2,
            ),
          ),
          errorStyle: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w500,
            color: context.colors.error,
          ),
          label: Text(
            label,
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: context.colors.onSurfaceVariant,
            ),
          ),
          hintText: hint,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.colors.onSurfaceVariant,
              width: 2,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.colors.primary,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
