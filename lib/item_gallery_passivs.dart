import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_avif/flutter_avif.dart';

const String iconBackground = '''
<svg width="96" height="96" viewBox="0 0 96 96" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M2.10822 20.3513C0.561573 8.85594 10.8154 -1.27105 22.2685 0.562529C35.3123 2.65078 50.6033 4.44761 60.0079 3.37388C64.8531 2.8207 69.6983 2.06998 74.2282 1.25849C85.558 -0.771107 96.2964 8.72778 95.244 20.1897C94.2161 31.3858 93.381 44.4983 93.7677 54.9914C93.8503 57.2311 93.9993 59.6452 94.1936 62.1346C95.2172 75.2496 79.8333 89.3122 66.7657 90.8248C50.6559 92.6896 32.0764 96.8655 13.2207 95.8403C4.64196 95.3738 -0.748522 87.0734 0.493384 78.5723C2.23107 66.6774 4.16302 50.0652 3.70869 37.3518C3.52368 32.1745 2.88996 26.1615 2.10822 20.3513Z" fill="#E5D7CE"/>
</svg>
''';
const String popUpInfoBox = '''
<svg width="324" height="371" viewBox="0 0 324 371" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1.37223 47.2437C-0.476213 39.0626 4.17758 30.815 12.2267 28.4571C44.5225 18.9963 124.937 -2.47339 181.245 0.234205C224.614 2.31963 285.845 20.2942 312.161 28.6041C319.617 30.9584 324.079 38.4152 322.918 46.1473C317.503 82.2321 303.668 183.651 307.68 253.792C309.424 284.293 315.42 324.198 319.87 350.895C321.961 363.437 309.335 373.866 297.326 369.689C255.458 355.123 174.762 331.167 116.815 339.454C88.9825 343.434 52.6682 356.815 27.5482 367.128C15.3101 372.153 1.71411 361.404 4.01905 348.377C11.9601 303.496 24.4589 220.059 20.1695 159.565C17.5166 122.15 6.89394 71.6826 1.37223 47.2437Z" fill="#AA836A"/>
</svg>
''';

class PassivItems {
  String route;
  String text;
  String popup;

PassivItems(this.route,this.text,this.popup);

}

class PassivMenu extends StatefulWidget {
  const PassivMenu({super.key});

  @override
  State<PassivMenu> createState() => _PassivMenuState();
}

class _PassivMenuState extends State<PassivMenu> {
  final placeholder = const SizedBox(
    height: 100,
  );
List<PassivItems> passivItems = [
      PassivItems("/home","name","name"),
      PassivItems("/login","name","name"),
      PassivItems("/login","name","name"),
];
  @override
  Widget build(BuildContext context) {



double width = MediaQuery.of(context).size.width;

    return Scaffold(
      
      backgroundColor: const Color(0xffd2b09a),
      appBar: AppBar(
        actions: [
          IconButton(
      icon: const Icon(
        Icons.settings,
        color: Colors.white,
      ),
      onPressed: () {
        setState(() {
          passivItems.add(PassivItems("/home","name","name"));
          print(passivItems.length);
        });
      },
    )
        ],
        backgroundColor: const Color(0xffd2b09a),
        title: const Text(
          'Passiv Items',style: TextStyle(
                fontFamily: 'upheavtt',  
              ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: width*0.8,
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
          children: List.generate(passivItems.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, passivItems[index].route);
              },
              child: SvgPicture.string(iconBackground),
            );
          })
          ),
        ),
      ),
    floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
          passivItems.add(PassivItems("/home","name","name"));
          print(passivItems.length);
        });
        },
    ));
  }
}


// TODO button added eintrag in die passivliste