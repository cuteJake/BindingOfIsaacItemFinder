import 'package:cloud_firestore/cloud_firestore.dart';

class TrinketItem {
  final String trinketEffect;
  final int trinketID;
  final String trinketIMG;
  final String trinketName;

  const TrinketItem({
    required this.trinketEffect,
    required this.trinketID,
    required this.trinketIMG,
    required this.trinketName
  });

  factory TrinketItem.fromJson(Map<String, dynamic> json) {
    return TrinketItem(
      trinketEffect: json['trinketEffect'] as String,
      trinketID: json['trinketID'] as int,
      trinketIMG: json['trinketIMG'] as String,
      trinketName: json['trinketName'] as String,
    );
  }
  factory TrinketItem.fromSnapshot(DocumentSnapshot snapshot) {
    final trinketItem = TrinketItem.fromJson(snapshot.data() as Map<String, dynamic>);
    return trinketItem;
  }
}
