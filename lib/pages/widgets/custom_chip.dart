import 'dart:ui';

import 'package:rdsh_test_task_1/pages/size_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomChip extends StatelessWidget {
  const CustomChip(
      {Key? key, required this.text, this.icon})
      : super(key: key);

  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Container(
      height: 30 * sizeCalc.heightScale,
      padding: (EdgeInsets.symmetric(horizontal: 14 * sizeCalc.widthScale)),
      decoration: BoxDecoration(
        color: Color(0xff717988).withOpacity(0.9),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (icon != null)
              Padding(
                padding: EdgeInsets.only(
                  right: 3 * sizeCalc.heightScale,
                ),
                child: Icon(
                  icon,
                  size: 20 * sizeCalc.heightScale,
                  color: Colors.white,
                ),
              ),
            Text(
              text,
              style: theme.primaryTextTheme.overline!.copyWith(
                fontSize: 12 * sizeCalc.heightScale,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
