import 'package:flutter/material.dart';
import 'package:rdsh_test_task_1/pages/size_calculator.dart';
import 'package:rdsh_test_task_1/pages/widgets/bottom_button.dart';
import 'package:rdsh_test_task_1/pages/widgets/card_with_chips.dart';
import 'package:rdsh_test_task_1/pages/widgets/custom_app_bar.dart';
import 'package:rdsh_test_task_1/pages/widgets/custom_chip.dart';
import 'package:rdsh_test_task_1/pages/widgets/custom_list_item.dart';
import 'package:rdsh_test_task_1/pages/widgets/expanding_text_card.dart';
import 'package:rdsh_test_task_1/rdsh_icons_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutTaskPage extends StatefulWidget {
  const AboutTaskPage({Key? key}) : super(key: key);

  @override
  _AboutTaskPageState createState() => _AboutTaskPageState();
}

class _AboutTaskPageState extends State<AboutTaskPage> {
  @override
  Widget build(BuildContext context) {
    final sizeCalc = SizeCalculator(context);
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CustomAppBar(
            title: 'О задании',
            onPressedBackButton: () {},
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 8 * sizeCalc.heightScale,
                  ),
                  Container(
                    //color: Colors.red.withOpacity(0.2),
                    height: 329 * sizeCalc.heightScale,
                    padding: EdgeInsets.symmetric(
                        horizontal: 12 * sizeCalc.widthScale),
                    child: CardWithChips(
                      title:
                          'Разместите в соц. сетях узнаваемые фигуры памятников, фотографий',
                      mainImagePath: 'lib/assets/images/card_image.png',
                      chips: [
                        CustomChip(
                          text: '231',
                          icon: Icons.menu_book_rounded,
                        ),
                        CustomChip(
                          text: '29.10.20–18.01.21',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 42 * sizeCalc.heightScale,
                  ),
                  ExpandingTextCard(
                    title: 'Описание',
                    text:
                        'Российское Движение школьников объявляет о старте Всероссийской киберспортивной школьной лиги РДШ — киберспортивные соревнования среди учащихся школ.Цели и задачи проведения Лиги, это вовлечение подростков и молодежи в активную современную деятельность, формирование у подростков лидерских качеств, навыков командной работы и межличностного общения, а также пропаганда ...',
                    buttonTitle: 'Раскрыть полное описание',
                  ),
                  SizedBox(
                    height: 34 * sizeCalc.heightScale,
                  ),
                  Container(
                    //color: Colors.green,
                    height: 134 * sizeCalc.heightScale,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        horizontal: 12 * sizeCalc.widthScale),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Материалы',
                          style: theme.primaryTextTheme.headline2!.copyWith(
                            fontSize: 17 * sizeCalc.heightScale,
                          ),
                        ),
                        SizedBox(
                          height: 16 * sizeCalc.heightScale,
                        ),
                        Container(
                          height: 96 * sizeCalc.heightScale,
                          width: double.infinity,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            separatorBuilder:
                                (BuildContext context, int index) => SizedBox(
                              width: 8,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  width: 144 * sizeCalc.widthScale,
                                  height: 96 * sizeCalc.heightScale,
                                  child: Image.asset(
                                    'lib/assets/images/list_image${index + 1}.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20 * sizeCalc.heightScale,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomListItem(
                        icon: RdshIcons.file_document,
                        title:
                            'Меню от Шефа-повара Константина Ивлева для школ',
                        subtitle: 'PDF • 4.8 Мб • 14.01.21',
                        onTap: () {},
                      ),
                      CustomListItem(
                        icon: RdshIcons.file_document,
                        title:
                            'Меню от Шефа-повара Константина Ивлева для школ',
                        subtitle: 'PDF • 4.8 Мб • 14.01.21',
                        onTap: () {},
                      ),
                      CustomListItem(
                        icon: RdshIcons.attach,
                        title: 'Яндекс. Картинки',
                        subtitle:
                            'Результаты поиска по запросу памятники Москвы ',
                        link: 'yandex.ru/images',
                        onTap: () {
                          launch('https://yandex.ru/images/');
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 39 * sizeCalc.heightScale,
                  ),
                  BottomButton(
                      icon: Icons.menu_book_rounded,
                      text: '231',
                      onTap: () => print('bottom button tap')),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
