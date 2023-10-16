import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_avif/flutter_avif.dart';

const String charBackground = '''
<svg width="270" height="348" viewBox="0 0 270 348" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M29.9585 9.65945C32.9734 3.21867 39.987 -0.0872697 46.9736 1.23988C77.1067 6.96389 157.882 20.8687 200.761 14.3891C207.144 13.4245 213.019 12.0274 218.416 10.3151C234.624 5.17225 270.687 20.916 269.413 37.8731C266.846 72.0519 261.763 113.443 251.736 149.261C239.29 193.726 244.354 239.311 252.529 273.776C256.328 289.796 229.246 320.738 212.879 322.53C134.39 331.123 24.8667 383.954 6.98757 306.04C-16.2737 204.671 27.7626 196.441 6.98757 121.817C-2.89714 86.3117 19.308 32.4127 29.9585 9.65945Z" fill="#AA836A"/>
</svg>
''';


class PassivItems {
  String route;
  String text;
  String popup;

PassivItems(this.route,this.text,this.popup);

}

class CharMenu extends StatefulWidget {
  const CharMenu({super.key});

  @override
  State<CharMenu> createState() => _CharMenuState();
}

class _CharMenuState extends State<CharMenu> {
  final placeholder = const SizedBox(
    height: 100,
  );

  @override
  Widget build(BuildContext context) {

List<PassivItems> passivItems = [
      PassivItems("/home","name","name"),
];

double width = MediaQuery.of(context).size.width;

    return Scaffold(
      
      backgroundColor: const Color(0xffd2b09a),
      appBar: AppBar(
        backgroundColor: const Color(0xffd2b09a),
        title: const Text(
          'Passiv Items',style: TextStyle(
                fontFamily: 'upheavtt',  
              ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: width*0.9,
          child: GridView.count(
            crossAxisCount: 1,
            crossAxisSpacing: 20,
            scrollDirection: Axis.horizontal,
          children: List.generate(passivItems.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, passivItems[index].route);
              },
              child: SvgPicture.string(charBackground),
            );
          })
          ),
        ),
      )
    
    );
  }
}


