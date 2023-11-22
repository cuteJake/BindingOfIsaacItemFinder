import 'package:cloud_firestore/cloud_firestore.dart';

class TrinketItemService {
  // get collection
  final CollectionReference trinketItems =
      FirebaseFirestore.instance.collection('trinketItems');
  // read
  Stream<QuerySnapshot>? getTrinketItemStream() {
    try {
      final trinketItemStream =
         trinketItems.orderBy('trinketID', descending: false).snapshots();
         return trinketItemStream;
    } catch (error) {
      return (null);
    }
  }
}
