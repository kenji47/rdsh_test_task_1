import 'package:rdsh_test_task_1/pages/size_calculator.dart';
import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.icon,
      this.link,
      this.onTap})
      : super(key: key);

  final String title;
  final String subtitle;
  final IconData icon;
  final String? link;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return ListTile(
      onTap: onTap,
      leading: Container(
        width: 50 * sizeCalc.widthScale,
        height: 50 * sizeCalc.heightScale,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: theme.colorScheme.background),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 14 * sizeCalc.widthScale,
          ),
          child: Icon(
            icon, //todo
            size: 22,
            color: theme.colorScheme.primary,
          ),
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(bottom: 5 * sizeCalc .heightScale),
        child: Text(
          title,
          style: theme.textTheme.bodyText1!
              .copyWith(color: theme.colorScheme.secondary,
          fontSize: 14 * sizeCalc.heightScale,),
        ),
      ),
      subtitle: link == null
          ? Text(
              subtitle,
              style: theme.textTheme.overline!
                  .copyWith(fontSize: 9 * sizeCalc.heightScale, color: theme.colorScheme.onBackground),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle,
                  style: theme.textTheme.overline!.copyWith(
                      fontSize: 13 * sizeCalc.heightScale, color: theme.colorScheme.onBackground),
                ),
                Text(
                  link!,
                  style: theme.textTheme.bodyText1!.copyWith(
                    fontSize: 13 * sizeCalc.heightScale,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2858A5),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
    );
  }
}
