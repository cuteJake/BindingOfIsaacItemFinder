import 'package:bindingofisaacitemfinderapp/core/presentation/widgets/core_colors.dart';
import 'package:bindingofisaacitemfinderapp/item_gallery/application/active_item_service.dart';
import 'package:bindingofisaacitemfinderapp/item_gallery/domain/active_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String iconBackground = '''
<svg width="96" height="96" viewBox="0 0 96 96" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M2.10822 20.3513C0.561573 8.85594 10.8154 -1.27105 22.2685 0.562529C35.3123 2.65078 50.6033 4.44761 60.0079 3.37388C64.8531 2.8207 69.6983 2.06998 74.2282 1.25849C85.558 -0.771107 96.2964 8.72778 95.244 20.1897C94.2161 31.3858 93.381 44.4983 93.7677 54.9914C93.8503 57.2311 93.9993 59.6452 94.1936 62.1346C95.2172 75.2496 79.8333 89.3122 66.7657 90.8248C50.6559 92.6896 32.0764 96.8655 13.2207 95.8403C4.64196 95.3738 -0.748522 87.0734 0.493384 78.5723C2.23107 66.6774 4.16302 50.0652 3.70869 37.3518C3.52368 32.1745 2.88996 26.1615 2.10822 20.3513Z" fill="#E5D7CE"/>
</svg>
''';
const String popUpInfoBox = '''
<svg width="372" height="371" viewBox="0 0 372 371" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M7.01782 77.5896C0.961459 33.0039 41.1137 -6.27451 85.9616 0.837192C137.039 8.93666 196.915 15.9058 233.742 11.7413C252.715 9.5957 271.688 6.68399 289.426 3.53655C333.791 -4.33544 375.841 32.5069 371.72 76.963C367.695 120.388 364.425 171.246 365.939 211.945C366.262 220.631 366.846 229.995 367.607 239.65C371.615 290.518 311.374 345.061 260.204 350.928C197.121 358.16 124.368 374.357 50.5322 370.381C16.9395 368.572 -4.16862 336.378 0.694444 303.405C7.49891 257.27 15.064 192.838 13.285 143.528C12.5605 123.447 10.079 100.125 7.01782 77.5896Z" fill="#E5D7CE"/>
</svg>
''';

class ActiveMenu extends StatelessWidget {
  ActiveMenu({super.key});

  final ActiveItemService activeItemService = ActiveItemService();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kColorPrimary,
      appBar: AppBar(
        backgroundColor: kColorPrimary,
        title: const Text(
          'Active Items',
          style: TextStyle(
            fontFamily: 'upheavtt',
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: width * 0.8,
          child: StreamBuilder(
            stream: ActiveItemService().getActiveItemStream(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }
              return GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: List.generate(
                  snapshot.data!.docs.length,
                  (index) {
                    ActiveItem activeItem =
                        ActiveItem.fromSnapshot(snapshot.data!.docs[index]);
                    return GestureDetector(
                      onTap: () {
                        showDialog(
                          barrierColor: kColorPrimary.withOpacity(0.5),
                          context: context,
                          builder: (context) => AlertDialog(
                            elevation: 0,
                            backgroundColor: kColorTransparent,
                            actionsAlignment: MainAxisAlignment.center,
                            content:
                                Stack(alignment: Alignment.center, children: [
                              SvgPicture.string(popUpInfoBox),
                              SizedBox(
                                height: 300,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.network(activeItem.itemIMG.isEmpty ? 'https://firebasestorage.googleapis.com/v0/b/binding-of-isaac-item-finder.appspot.com/o/items%2FpassivItems%2Fcat_face_mini.png?alt=media&token=04d44347-24ef-44ac-8346-4288c49f1b7a' : activeItem.itemIMG,),
                                    Text(activeItem.itemName),
                                    Text(activeItem.itemEffect),
                                    Text(activeItem.itemRechargerate),
                                    Text(activeItem.itemType),
                                    Text(activeItem.itemPool),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        );
                      },
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          SvgPicture.string(iconBackground),
                          Image.network(
                            activeItem.itemIMG.isEmpty ? 'https://firebasestorage.googleapis.com/v0/b/binding-of-isaac-item-finder.appspot.com/o/items%2FpassivItems%2Fcat_face_mini.png?alt=media&token=04d44347-24ef-44ac-8346-4288c49f1b7a' : activeItem.itemIMG,
                            scale: 0.5,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
