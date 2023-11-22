import 'package:cloud_firestore/cloud_firestore.dart';

class PickupItem {
  final String pickupEffect;
  final String pickupIMG;
  final String pickupName;

  const PickupItem({
    required this.pickupEffect,
    required this.pickupIMG,
    required this.pickupName
  });

  factory PickupItem.fromJson(Map<String, dynamic> json) {
    return PickupItem(
      pickupEffect: json['pickupEffect'] as String,
      pickupIMG: json['pickupIMG'] as String,
      pickupName: json['pickupName'] as String,
    );
  }
  factory PickupItem.fromSnapshot(DocumentSnapshot snapshot) {
    final pickupItem = PickupItem.fromJson(snapshot.data() as Map<String, dynamic>);
    return pickupItem;
  }
}
