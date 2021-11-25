import 'package:rdsh_test_task_1/pages/size_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {Key? key, required this.onTap, this.icon, required this.text})
      : super(key: key);

  final VoidCallback onTap;
  final iconPath = 'lib/assets/icons/link.svg';
  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Container(
      height: 88 * sizeCalc.heightScale,
      padding: EdgeInsets.only(
        left: 12 * sizeCalc.widthScale,
        right: 11 * sizeCalc.widthScale,
        top: 10 * sizeCalc.heightScale,
        bottom: 28 * sizeCalc.heightScale,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 4,
              blurRadius: 32,
              offset: Offset(0, 0))
        ],
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15), topLeft: Radius.circular(15)),
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50 * sizeCalc.heightScale,
          padding: (EdgeInsets.only(
              left: 74 * sizeCalc.widthScale, right: 74 * sizeCalc.widthScale)),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Отправить отчет',
                  style: theme.primaryTextTheme.headline3!.copyWith(
                    fontSize: 16 * sizeCalc.heightScale,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 30 * sizeCalc.heightScale,
                  padding:
                      (EdgeInsets.symmetric(horizontal: 9 * sizeCalc.widthScale)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        if (iconPath != null)
                          Padding(
                            padding: EdgeInsets.only(
                              right: 4 * sizeCalc.widthScale,
                            ),
                            child: Icon(
                              icon,
                              size: 20 * sizeCalc.heightScale,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        Text(
                          text,
                          style: TextStyle(
                            fontSize: 12 * sizeCalc.heightScale,
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'TTNorms',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
