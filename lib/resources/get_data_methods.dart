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

  // Get saved address

  //  Get past Orders
  // Stream<List<OrderModel>> streamMyOrder(String myId) {
  //   return _userRef
  //       .collection("orderCollection")
  //       .where('user.docId', isEqualTo: myId)
  //       .snapshots()
  //       .map((event) =>
  //           event.docs.map((e) => OrderModel.fromJson(e.data())).toList());
  // }

  //===============STORE RELATED===============//

  //Get Promotion Banner

  //Get store info

  // Get products from store
}
