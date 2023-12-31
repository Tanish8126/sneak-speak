import 'package:cloud_firestore/cloud_firestore.dart';

class GetDataMethods {
  final _userRef = FirebaseFirestore.instance;

  //==============USER RELATED================//

// Get user form data
  Future<Map<String, dynamic>?> getCurrentUser(String? uid) async {
    if (uid != null) {
      final snap = await _userRef.collection('userData').doc(uid).get();
      return snap.data();
    }
    return null;
  }

  //===============TWEET RELATED===============//

  //Get Tweet

  //Get

  //Get
}
