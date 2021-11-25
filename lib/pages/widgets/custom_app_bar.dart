import 'package:rdsh_test_task_1/pages/size_calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final VoidCallback? onPressedBackButton;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.onPressedBackButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Container(
      height: 108 * sizeCalc.heightScale,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 40,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 44 * sizeCalc.heightScale),
                FittedBox(
                  //headline2
                  child: Text(
                    title,
                    style: theme.primaryTextTheme.headline2!.copyWith(
                      fontSize: 17 * sizeCalc.heightScale,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: 14 * sizeCalc.widthScale,
                top: 52 * sizeCalc.heightScale),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: onPressedBackButton,
                  icon: Icon(
                    Icons.arrow_back,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
