import 'package:cloud_firestore/cloud_firestore.dart';

class PassivItem {
  final String itemEffect;
  final int itemID;
  final String itemIMG;
  final String itemName;
  final String itemPool;
  final String itemType;

  const PassivItem({
    required this.itemEffect,
    required this.itemID,
    required this.itemIMG,
    required this.itemName,
    required this.itemPool,
    required this.itemType,
  });

  factory PassivItem.fromJson(Map<String, dynamic> json) {
    return PassivItem(
      itemEffect: json['itemEffect'] as String,
      itemID: json['itemID'] as int,
      itemIMG: json['itemIMG'] as String,
      itemName: json['itemName'] as String,
      itemPool: json['itemPool'] as String,
      itemType: json['itemType'] as String,
    );
  }
  factory PassivItem.fromSnapshot(DocumentSnapshot snapshot) {
    final passivItem = PassivItem.fromJson(snapshot.data() as Map<String, dynamic>);
    return passivItem;
  }
}
