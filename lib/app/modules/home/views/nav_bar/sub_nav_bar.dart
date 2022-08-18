import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_restaurant_flutter/app/data/extensions/context_x.dart';
import 'package:smart_restaurant_flutter/app/modules/home/views/nav_bar/social_network_ref.dart';

class SubNavBar extends StatelessWidget {
  const SubNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        context.isTableMode
            ? const Expanded(child: SocialNetworkRef())
            : const SizedBox.shrink(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 230,
              child: TextField(
                minLines: 1,
                maxLines: 1,
                cursorColor: context.colors.primary,
                cursorHeight: 10,
                cursorWidth: 2,
                style: context.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: context.colors.secondary,
                ),
                enableSuggestions: true,
                autocorrect: true,
                decoration: InputDecoration(
                  errorBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: context.colors.error, width: 1)),
                  errorStyle: context.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: context.colors.error,
                    fontSize: 10,
                  ),
                  isDense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: context.colors.surfaceVariant,
                      width: 1,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: context.colors.primary,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: SizedBox(
                width: 30,
                // height: 20,
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    size: 20,
                    color: context.colors.primary,
                  ),
                ),
              ),
            ),
          ],
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  'Vé của tôi',
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: context.colors.onBackground,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.sticky_note_2_rounded,
                  size: 20,
                  color: context.colors.onBackground,
                ),
                Text(
                  '1',
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: context.colors.primary,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
