import 'package:rdsh_test_task_1/pages/size_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardWithChips extends StatelessWidget {
  const CardWithChips(
      {Key? key,
      required this.title,
      required this.mainImagePath,
      required this.chips})
      : super(key: key);

  final String title;
  final String mainImagePath;
  final List<Widget> chips;

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 231 * sizeCalc.heightScale,
                  width: double.infinity,
                  //decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    mainImagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 14 * sizeCalc.widthScale,
                bottom: 21 * sizeCalc.heightScale,
                child: Row(
                  children: chips
                      .expand((element) => [
                            element,
                            SizedBox(
                              width: 3 * sizeCalc.widthScale,
                            ),
                          ])
                      .toList() as List<Widget>,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 14 * sizeCalc.heightScale,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              //color: Colors.blue,
              height: 84 * sizeCalc.heightScale,
              width: 280 * sizeCalc.widthScale,
              child: Text(
                title,
                style: theme.primaryTextTheme.headline1!.copyWith(
                  fontSize: 24 * sizeCalc.heightScale,
                ),
                maxLines: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
