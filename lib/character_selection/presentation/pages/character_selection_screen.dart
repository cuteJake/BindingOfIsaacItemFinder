import 'package:bindingofisaacitemfinderapp/core/presentation/widgets/core_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:card_slider/card_slider.dart';

const String charBackground = '''
<svg width="270" height="348" viewBox="0 0 270 348" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M29.9585 9.65945C32.9734 3.21867 39.987 -0.0872697 46.9736 1.23988C77.1067 6.96389 157.882 20.8687 200.761 14.3891C207.144 13.4245 213.019 12.0274 218.416 10.3151C234.624 5.17225 270.687 20.916 269.413 37.8731C266.846 72.0519 261.763 113.443 251.736 149.261C239.29 193.726 244.354 239.311 252.529 273.776C256.328 289.796 229.246 320.738 212.879 322.53C134.39 331.123 24.8667 383.954 6.98757 306.04C-16.2737 204.671 27.7626 196.441 6.98757 121.817C-2.89714 86.3117 19.308 32.4127 29.9585 9.65945Z" fill="#AA836A"/>
</svg>
''';

class CharMenu extends StatefulWidget {
  const CharMenu({super.key});

  @override
  State<CharMenu> createState() => _CharMenuState();
}

class _CharMenuState extends State<CharMenu> {
  @override
  Widget build(BuildContext context) {
    List<Color> valuesDataColors = [
      Colors.purple,
      Colors.yellow,
      Colors.green,
      Colors.red,
      Colors.grey,
      Colors.blue,
    ];

    List<Widget> valuesWidget = [];
    for (int i = 0; i < valuesDataColors.length; i++) {
      valuesWidget.add(Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: valuesDataColors[i],
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              i.toString(),
              style: const TextStyle(
                fontSize: 28,
              ),
            ),
          )));
    }

    return Scaffold(
      backgroundColor: kColorPrimary,
      appBar: AppBar(
        backgroundColor: kColorPrimary,
        elevation: 0,
        title: const Text(
          'Passiv Items',
          style: TextStyle(
            fontFamily: 'upheavtt',
          ),
        ),
      ),
      body: CardSlider(
        cards: valuesWidget,
        bottomOffset: .0003,
        cardHeight: 0.75,
        containerHeight: MediaQuery.of(context).size.height - 100,
        itemDotOffset: -0.05,
      ),
    );
  }
}
