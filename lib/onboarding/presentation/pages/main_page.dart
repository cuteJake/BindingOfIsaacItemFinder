import 'package:bindingofisaacitemfinderapp/core/presentation/widgets/core_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:flutter_svg/svg.dart';

import 'main_menu.dart';

const String svgString = '''
<svg width="220" height="90" viewBox="0 0 220 90" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 26.3456C0 16.5298 8.87237 8.93615 18.6194 7.77633C42.0004 4.99416 64.8238 -6.26179 94.821 4.71411C129.214 17.2983 170.783 -1.41711 208.687 4.9338C215.534 6.0811 220 12.3728 220 19.3157V73.4479C220 81.8388 213.503 88.7746 205.121 88.384C192.668 87.8037 175.226 85.4542 164.279 77.4414C145.738 63.869 96.1659 97.6973 66.6725 88.3376C51.1419 83.409 33.4802 83.671 20.2382 85.0237C9.87217 86.0826 0 78.2305 0 67.8105V26.3456Z" fill="#E5D7CE"/>
<path d="M80 37V35H78V33H72V35H70V37H76V39H80V41H82V43H84V47H82V51H80V53H68V51H66V49H64V45H66V43H68V45H70V49H78V43H76V41H68V39H66V33H68V31H72V29H80V31H82V37H80Z" fill="#24180E"/>
<path d="M92 53V49H90V45H86V41H102V43H100V45H96V53H92Z" fill="#24180E"/>
<path d="M106 53V43H108V41H110V39H112V41H114V43H116V47H118V53H114V49H108V53H106ZM112 47V45H110V47H112Z" fill="#24180E"/>
<path d="M122 53V45H120V41H132V43H134V45H132V49H134V51H136V53H130V51H128V49H126V51H124V53H122ZM128 45V43H124V45H128Z" fill="#24180E"/>
<path d="M144 53V49H142V45H138V41H154V43H152V45H148V53H144Z" fill="#24180E"/>
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
                svgString,
              ),
            ),
            const SizedBox(height: 36),
            
          ],
        ),
      ),
    );
  }
}
