import 'package:cloud_firestore/cloud_firestore.dart';

class CharacterInfoService {
  // get collection
  final CollectionReference characterInfo =
      FirebaseFirestore.instance.collection('characterInfo');
  // read
  Stream<QuerySnapshot>? getCharacterInfoStream() {
    try {
      final characterInfoStream =
         characterInfo.orderBy('characterName', descending: false).snapshots();
         return characterInfoStream;
    } catch (error) {
      return (null);
    }
  }
}
