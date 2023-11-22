import 'package:cloud_firestore/cloud_firestore.dart';

class PickupItemService {
  // get collection
  final CollectionReference pickupItems =
      FirebaseFirestore.instance.collection('pickupItems');
  // read
  Stream<QuerySnapshot>? getPickupItemStream() {
    try {
      final pickupItemStream =
         pickupItems.orderBy('pickupName', descending: false).snapshots();
         return pickupItemStream;
    } catch (error) {
      return (null);
    }
  }
}
