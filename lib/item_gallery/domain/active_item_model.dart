import 'package:cloud_firestore/cloud_firestore.dart';

class ActiveItem {
  final String itemEffect;
  final int itemID;
  final String itemIMG;
  final String itemName;
  final String itemPool;
  final String itemType;

  const ActiveItem({
    required this.itemEffect,
    required this.itemID,
    required this.itemIMG,
    required this.itemName,
    required this.itemPool,
    required this.itemType,
  });

  factory ActiveItem.fromJson(Map<String, dynamic> json) {
    return ActiveItem(
      itemEffect: json['itemEffect'] as String,
      itemID: json['itemID'] as int,
      itemIMG: json['itemIMG'] as String,
      itemName: json['itemName'] as String,
      itemPool: json['itemPool'] as String,
      itemType: json['itemType'] as String,
    );
  }
  factory ActiveItem.fromSnapshot(DocumentSnapshot snapshot) {
    final activeItem = ActiveItem.fromJson(snapshot.data() as Map<String, dynamic>);
    return activeItem;
  }
}
