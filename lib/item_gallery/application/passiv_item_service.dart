import 'package:cloud_firestore/cloud_firestore.dart';

class PassivItemService {
  // get collection
  final CollectionReference passivItems =
      FirebaseFirestore.instance.collection('passivItems');
  // read
  Stream<QuerySnapshot>? getPassivItemStream() {
    try {
      final passivItemStream =
         passivItems.orderBy('itemID', descending: false).snapshots();
         return passivItemStream;
    } catch (error) {
      return (null);
    }
  }
}
