import 'package:cloud_firestore/cloud_firestore.dart';

class CharacterInfo {
  final String startingItem;
  final String startingLife;
  final String startingDamage;
  final String startingTears;
  final String startingPickups;
  final String characterName;
  final String characterIMG;
  final double startingShotspeed;
  final double startingRange;
  final double startingSpeed;
  final double startingLuck;

  const CharacterInfo({
    required this.startingItem,
    required this.startingLife,
    required this.startingDamage,
    required this.startingTears,
    required this.startingPickups,
    required this.characterName,
    required this.characterIMG,
    required this.startingShotspeed,
    required this.startingRange,
    required this.startingSpeed,
    required this.startingLuck,
  });

  factory CharacterInfo.fromJson(Map<String, dynamic> json) {
    return CharacterInfo(
      startingItem: json['startingItem'] as String,
      startingLife: json['startingLife'] as String,
      startingDamage: json['startingDamage'] as String,
      startingTears: json['startingTears'] as String,
      startingPickups: json['startingPickups'] as String,
      characterName: json['characterName'] as String,
      characterIMG: json['characterIMG'] as String,
      startingShotspeed: json['startingShotspeed'] + 0.0 as double,
      startingRange: json['startingRange'] + 0.0 as double,
      startingSpeed: json['startingSpeed'] + 0.0 as double,
      startingLuck: json['startingLuck'] + 0.0 as double,
    );
  }
  factory CharacterInfo.fromSnapshot(DocumentSnapshot snapshot) {
    final characterInfo = CharacterInfo.fromJson(snapshot.data() as Map<String, dynamic>);
    return characterInfo;
  }
}
