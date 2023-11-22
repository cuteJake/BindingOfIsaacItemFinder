import 'package:bindingofisaacitemfinderapp/core/presentation/widgets/core_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:flutter_svg/svg.dart';

import 'main_menu.dart';

const String svgStart = '''
<svg width="220" height="91" viewBox="0 0 220 91" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 26.5507C0 16.7349 8.87237 9.14123 18.6194 7.98141C42.0004 5.19924 64.8238 -6.05672 94.821 4.91918C129.214 17.5034 170.783 -1.21203 208.687 5.13888C215.534 6.28618 220 12.5779 220 19.5208V74.6031C220 82.5927 214.087 89.2603 206.098 89.2378C195.731 89.2084 180.4 88.122 163 83.5C131 75 96.1659 97.9024 66.6725 88.5427C51.1419 83.6141 33.4802 83.8761 20.2382 85.2288C9.87217 86.2877 0 78.4355 0 68.0155V26.5507Z" fill="#E5D7CE"/>
<path d="M86.0002 37V35H84.0002V33H82.0002H80.0002H78.0002V35H76.0002V37H78.0002H80.0002H82.0002V39H84.0002H86.0002V41H88.0002V43H90.0002V45V47H88.0002V49V51H86.0002V53H84.0002H82.0002H80.0002H78.0002H76.0002H74.0002V51H72.0002V49H70.0002V47V45H72.0002V43H74.0002V45H76.0002V47V49H78.0002H80.0002H82.0002H84.0002V47V45V43H82.0002V41H80.0002H78.0002H76.0002H74.0002V39H72.0002V37V35V33H74.0002V31H76.0002H78.0002V29H80.0002H82.0002H84.0002H86.0002V31H88.0002V33V35V37H86.0002ZM100 53H98.0002V51V49H96.0002V47V45H94.0002H92.0002V43V41H94.0002H96.0002H98.0002H100H102H104H106H108V43H106V45H104H102V47V49V51V53H100ZM112 53V51V49V47V45V43H114V41H116V39H118V41H120V43H122V45V47H124V49V51V53H122H120V51V49H118H116H114V51V53H112ZM118 47V45H116V47H118ZM128 53V51V49V47V45H126V43V41H128H130H132H134H136H138V43H140V45H138V47V49H140V51H142V53H140H138H136V51H134V49H132V51H130V53H128ZM132 45H134V43H132H130V45H132ZM152 53H150V51V49H148V47V45H146H144V43V41H146H148H150H152H154H156H158H160V43H158V45H156H154V47V49V51V53H152Z" fill="#24180E"/>
</svg>
''';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

 
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: kColorPrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.01,),
              AvifImage.asset(
                "assets/img/bindingofisaacrepentance.avif",
                height: 200,
                fit: BoxFit.contain,
              ),
            const Text(
              'Item Finder',
              style: TextStyle(fontSize: 40, fontFamily: 'upheavtt'),
            ),
            SizedBox(height: size.height * 0.15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainMenu(),
                    ),
                  );
              },
              child: SvgPicture.string(
                svgStart,
              ),
            ),
            const SizedBox(height: 36),
            
          ],
        ),
      ),
    );
  }
}
