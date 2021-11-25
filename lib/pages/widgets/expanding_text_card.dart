import 'package:rdsh_test_task_1/pages/size_calculator.dart';
import 'package:flutter/material.dart';

class ExpandingTextCard extends StatefulWidget {
  const ExpandingTextCard(
      {Key? key,
      required this.title,
      required this.text,
      required this.buttonTitle})
      : super(key: key);

  final String title;
  final String text;
  final String buttonTitle;

  @override
  _ExpandingTextCardState createState() => _ExpandingTextCardState();
}

class _ExpandingTextCardState extends State<ExpandingTextCard> {
  bool _isOpened = false;

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Container(
      //color: Colors.blue.withOpacity(0.3),
      //height: 252 * sizeCalc.heightScale,
      width: 352 * sizeCalc.widthScale,
      padding: EdgeInsets.symmetric(horizontal: 12 * sizeCalc.widthScale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: theme.primaryTextTheme.headline2!.copyWith(
              fontSize: 17 * sizeCalc.heightScale,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.text,
            style: theme.primaryTextTheme.subtitle2!.copyWith(
              fontSize: 15 * sizeCalc.heightScale,
            ),
            maxLines: (_isOpened ? 10 : 3),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isOpened = !_isOpened;
              });
            },
              child: Container(
                padding: EdgeInsets.only(
                  bottom: 2 * sizeCalc.heightScale, // space between underline and text
                ),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(
                      color: theme.colorScheme.primary,  // Text colour here
                      width: 1.0, // Underline width
                    ))
                ),

                child: Text(
                  widget.buttonTitle,
                  style: TextStyle(
                    fontSize: 14 * sizeCalc.heightScale,
                    color: theme.colorScheme.primary,   // Text colour here
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
