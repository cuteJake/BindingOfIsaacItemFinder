import 'package:bindingofisaacitemfinderapp/character_selection/application/character_info_service.dart';
import 'package:bindingofisaacitemfinderapp/character_selection/domain/character_info_model.dart';
import 'package:bindingofisaacitemfinderapp/core/presentation/widgets/core_colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
      body: StreamBuilder<QuerySnapshot>(
        stream: CharacterInfoService().getCharacterInfoStream(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          }

          List<CharacterInfo> characters = snapshot.data!.docs
              .map((doc) => CharacterInfo.fromSnapshot(doc))
              .toList();

          List<Widget> characterCards = characters.map((character) {
            return Stack(alignment: Alignment.center, children: [
              SvgPicture.string(charBackground),
              SizedBox(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      character.characterIMG.isEmpty
                          ? 'https://firebasestorage.googleapis.com/v0/b/binding-of-isaac-item-finder.appspot.com/o/items%2FpassivItems%2Fcat_face_mini.png?alt=media&token=04d44347-24ef-44ac-8346-4288c49f1b7a'
                          : character.characterIMG,
                    ),
                    Text(character.characterName),
                    Text(character.startingItem),
                    Text(character.startingPickups),
                    Text(character.startingLife),
                    Text(character.startingDamage),
                    Text(character.startingTears),
                    Text(character.startingShotspeed.toString()),
                    Text(character.startingRange.toString()),
                    Text(character.startingTears),
                    Text(character.startingSpeed.toString()),
                  ],
                ),
              ),
            ]);
          }).toList();

          return CardSlider(
            cards: characterCards,
            bottomOffset: .0003,
            cardHeight: 1,
            containerHeight: MediaQuery.of(context).size.height - 100,
            itemDotOffset: -0.05,
          );
        },
      ),
    );
  }
}
