import 'package:bindingofisaacitemfinderapp/item_gallery_activ.dart';
import 'package:bindingofisaacitemfinderapp/item_gallery_passivs.dart';
import 'package:bindingofisaacitemfinderapp/item_gallery_pickups.dart';
// import 'package:bindingofisaacitemfinderapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_avif/flutter_avif.dart';

const String buttonActivItems = '''
<svg width="327" height="150" viewBox="0 0 327 150" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 31.808C0 21.8734 9.04309 14.3427 18.9626 13.796C56.8476 11.7078 92.6359 -11.9608 140.938 7.85684C193.902 29.5868 258.315 -4.67906 316.256 9.53531C322.799 11.1404 327 17.2672 327 24.0039V132.469C327 140.806 320.604 147.694 312.268 147.559C293.927 147.261 262.758 144.319 244.179 129.069C216.62 106.448 142.938 162.829 99.0996 147.229C72.1008 137.622 40.769 139.849 20.6822 142.977C10.1996 144.609 0 136.697 0 126.088V31.808Z" fill="#E5D7CE"/>
<path d="M87 83V77H85V75H83V77H79V81H77V83H73V79H75V73H77V71H79V65H81V61H83V59H87V69H89V77H91V83H87ZM85 73V69H83V71H81V73H85Z" fill="#24180E"/>
<path d="M103 73V71H99V73H97V79H99V81H101V79H109V81H107V83H95V77H93V75H95V71H99V69H105V73H103Z" fill="#24180E"/>
<path d="M117 83V79H115V75H111V71H127V73H125V75H121V83H117Z" fill="#24180E"/>
<path d="M131 83V69H133V71H135V83H131Z" fill="#24180E"/>
<path d="M143 83V81H141V77H139V75H137V69H139V71H141V73H143V75H147V73H149V71H153V73H151V77H149V79H147V83H143Z" fill="#24180E"/>
<path d="M167 83V81H165V79H169V77H171V73H169V65H171V63H165V61H167V59H179V63H175V77H179V79H181V81H177V83H167Z" fill="#24180E"/>
<path d="M189 83V79H187V75H183V71H199V73H197V75H193V83H189Z" fill="#24180E"/>
<path d="M205 83V81H203V75H201V73H203V71H213V73H207V75H211V77H207V79H217V81H213V83H205Z" fill="#24180E"/>
<path d="M231 83V77H227V75H225V83H221V71H227V73H231V71H235V79H237V83H231Z" fill="#24180E"/>
<path d="M245 83V81H241V79H239V77H243V79H249V77H247V75H251V77H253V81H249V83H245ZM247 75H243V73H241V71H243V69H249V71H251V73H247V75Z" fill="#24180E"/>
</svg>
''';
const String buttonPassivItems = '''
<svg width="327" height="150" viewBox="0 0 327 150" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 31.808C0 21.8734 9.04309 14.3427 18.9626 13.796C56.8476 11.7078 92.6359 -11.9608 140.938 7.85684C193.902 29.5868 258.315 -4.67906 316.256 9.53531C322.799 11.1404 327 17.2672 327 24.0039V132.469C327 140.806 320.604 147.694 312.268 147.559C293.927 147.261 262.758 144.319 244.179 129.069C216.62 106.448 142.938 162.829 99.0996 147.229C72.1008 137.622 40.769 139.849 20.6822 142.977C10.1996 144.609 0 136.697 0 126.088V31.808Z" fill="#E5D7CE"/>
<path d="M70 83V79H68V65H66V63H68V61H70V59H76V61H82V63H84V65H86V71H84V73H80V75H74V83H70ZM80 71V67H78V65H72V71H80Z" fill="#24180E"/>
<path d="M90 83V73H92V71H94V69H96V71H98V73H100V77H102V83H98V79H92V83H90ZM96 77V75H94V77H96Z" fill="#24180E"/>
<path d="M110 83V81H106V79H104V77H108V79H114V77H112V75H116V77H118V81H114V83H110ZM112 75H108V73H106V71H108V69H114V71H116V73H112V75Z" fill="#24180E"/>
<path d="M126 83V81H122V79H120V77H124V79H130V77H128V75H132V77H134V81H130V83H126ZM128 75H124V73H122V71H124V69H130V71H132V73H128V75Z" fill="#24180E"/>
<path d="M138 83V69H140V71H142V83H138Z" fill="#24180E"/>
<path d="M150 83V81H148V77H146V75H144V69H146V71H148V73H150V75H154V73H156V71H160V73H158V77H156V79H154V83H150Z" fill="#24180E"/>
<path d="M174 83V81H172V79H176V77H178V73H176V65H178V63H172V61H174V59H186V63H182V77H186V79H188V81H184V83H174Z" fill="#24180E"/>
<path d="M196 83V79H194V75H190V71H206V73H204V75H200V83H196Z" fill="#24180E"/>
<path d="M212 83V81H210V75H208V73H210V71H220V73H214V75H218V77H214V79H224V81H220V83H212Z" fill="#24180E"/>
<path d="M238 83V77H234V75H232V83H228V71H234V73H238V71H242V79H244V83H238Z" fill="#24180E"/>
<path d="M252 83V81H248V79H246V77H250V79H256V77H254V75H258V77H260V81H256V83H252ZM254 75H250V73H248V71H250V69H256V71H258V73H254V75Z" fill="#24180E"/>
</svg>
''';
const String buttonPickups = '''
<svg width="327" height="150" viewBox="0 0 327 150" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 31.808C0 21.8734 9.04309 14.3427 18.9626 13.796C56.8476 11.7078 92.6359 -11.9608 140.938 7.85684C193.902 29.5868 258.315 -4.67906 316.256 9.53531C322.799 11.1404 327 17.2672 327 24.0039V132.469C327 140.806 320.604 147.694 312.268 147.559C293.927 147.261 262.758 144.319 244.179 129.069C216.62 106.448 142.938 162.829 99.0996 147.229C72.1008 137.622 40.769 139.849 20.6822 142.977C10.1996 144.609 0 136.697 0 126.088V31.808Z" fill="#E5D7CE"/>
<path d="M112 83V79H110V65H108V63H110V61H112V59H118V61H124V63H126V65H128V71H126V73H122V75H116V83H112ZM122 71V67H120V65H114V71H122Z" fill="#24180E"/>
<path d="M132 83V69H134V71H136V83H132Z" fill="#24180E"/>
<path d="M148 73V71H144V73H142V79H144V81H146V79H154V81H152V83H140V77H138V75H140V71H144V69H150V73H148Z" fill="#24180E"/>
<path d="M166 83V81H162V83H158V75H156V71H160V75H164V73H170V75H168V77H166V79H170V83H166Z" fill="#24180E"/>
<path d="M176 83V81H174V69H176V75H178V79H182V69H184V71H186V83H176Z" fill="#24180E"/>
<path d="M190 83V71H200V73H202V77H200V79H194V83H190ZM196 77V73H192V75H194V77H196Z" fill="#24180E"/>
<path d="M210 83V81H206V79H204V77H208V79H214V77H212V75H216V77H218V81H214V83H210ZM212 75H208V73H206V71H208V69H214V71H216V73H212V75Z" fill="#24180E"/>
</svg>
''';

class ItemMenu extends StatefulWidget {
  const ItemMenu({super.key});

  @override
  State<ItemMenu> createState() => _ItemMenuState();
}

class _ItemMenuState extends State<ItemMenu> {
  final placeholder = const SizedBox(
    height: 100,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd2b09a),
      appBar: AppBar(
        backgroundColor: const Color(0xffd2b09a),
        title: const Text(
          'Item Menu',style: TextStyle(
                fontFamily: 'upheavtt',  
              ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AvifImage.asset(
            //     "assets/img/bindingofisaacrepentance.avif",
            //     height: 100,
            //     fit: BoxFit.contain,
            //   ),
            //   const Text(
            //   'Item Finder',
            //   style: TextStyle(fontSize: 24, fontFamily: 'upheavtt'),
            // ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ActivMenu(),
                    ),
                  );
              },
              child: SvgPicture.string(
                buttonActivItems,
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PassivMenu(),
                    ),
                  );
              },
              child: SvgPicture.string(
                buttonPassivItems,
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PickupMenu(),
                    ),
                  );
              },
              child: SvgPicture.string(
                buttonPickups,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
