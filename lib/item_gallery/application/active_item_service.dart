import 'package:cloud_firestore/cloud_firestore.dart';

class ActiveItemService {
  // get collection
  final CollectionReference activItems =
      FirebaseFirestore.instance.collection('activItems');
  // read
  Stream<QuerySnapshot>? getActiveItemStream() {
    try {
      final activeItemStream =
         activItems.orderBy('itemID', descending: false).snapshots();
         return activeItemStream;
    } catch (error) {
      return (null);
    }
  }
}
