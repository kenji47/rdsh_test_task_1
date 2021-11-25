
import 'package:flutter/material.dart';
import 'package:rdsh_test_task_1/pages/size_calculator.dart';

class LongButton extends StatelessWidget {
  const LongButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.backgroundColor,
    this.showShadow = true,
    this.onTap,
    this.icon,
  }) : super(key: key);

  final String text;
  final Color backgroundColor;
  final TextStyle textStyle;
  final IconData? icon;
  final VoidCallback? onTap;
  final showShadow;

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Container(
      height: 50 * sizeCalc.heightScale,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(showShadow ? 0.2 : 0.0),
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
        color: backgroundColor,
        border: Border.all(
          color: theme.colorScheme.primary,
        ),
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Center(
              child: Text(
                text,
                style: textStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
