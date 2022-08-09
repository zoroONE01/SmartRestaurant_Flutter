import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SubNavBar extends StatelessWidget {
  const SubNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 250,
          child: TextField(
            minLines: 1,
            maxLines: 1,
            cursorColor: context.theme.colorScheme.primary,
            cursorHeight: 10,
            cursorWidth: 2,
            style: GoogleFonts.comfortaa(
                fontWeight: FontWeight.w700,
                color: context.theme.colorScheme.primary,
                fontSize: 12),
            enableSuggestions: true,
            autocorrect: true,
            decoration: InputDecoration(
              errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: context.theme.colorScheme.primary, width: 1)),
              errorStyle: GoogleFonts.comfortaa(
                  fontWeight: FontWeight.w700,
                  color: context.theme.colorScheme.primary,
                  fontSize: 10),
              isDense: true,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: context.theme.colorScheme.primary, width: 1),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: context.theme.colorScheme.primary, width: 1),
              ),
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: SizedBox(
            width: 30,
            height: 30,
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {},
              child: Icon(
                Icons.search,
                size: 20,
                color: context.theme.colorScheme.primary,
              ),
            ),
          ),
        ),
        Text(
          'Vé của tôi',
          style: GoogleFonts.comfortaa(
              color: context.theme.colorScheme.primary, fontSize: 14),
        ),
        Icon(
          Icons.sticky_note_2_rounded,
          size: 20,
          color: context.theme.colorScheme.primary,
        ),
        Text(
          '1',
          style: GoogleFonts.comfortaa(
              color: context.theme.colorScheme.primary, fontSize: 16),
        )
      ],
    );
  }
}
