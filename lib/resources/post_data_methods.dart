import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/email_data_model.dart';
import '../models/phone_data_model.dart';

class PostDataMethods {
  final _userRef = FirebaseFirestore.instance;

  //================USER RELATED=============//

  // Save Email data to firebase
  postEmailData(uid, email, photoUrl, userName, timestamp) async {
    EmailData logindata = EmailData(
      email: email,
      uid: uid,
      photoUrl: photoUrl,
      userName: userName,
      creationDate: timestamp,
    );
    await _userRef.collection('userData').doc(uid).set(logindata.toMap());
  }

  // Save Facebook data to firebase
  postFacebookData(uid, email, photoUrl, userName, timestamp) async {
    EmailData logindata = EmailData(
      email: email,
      uid: uid,
      photoUrl: photoUrl,
      userName: userName,
      creationDate: timestamp,
    );
    await _userRef.collection('userData').doc(uid).set(logindata.toMap());
  }

  //Save Mobile Number to Firebase
  postMobileData(String uid, String phoneNo, DateTime creation) async {
    Phonedata userdata = Phonedata(
      uid: uid,
      phoneNumber: phoneNo,
      creationDate: creation,
    );
    await _userRef.collection('userData').doc(uid).set(userdata.toMap());
  }

  // Save User Address
  postAddress(String uid, String phoneNo, DateTime creation) async {
    Phonedata userdata = Phonedata(
      uid: uid,
      phoneNumber: phoneNo,
      creationDate: creation,
    );
    await _userRef.collection('userAddress').doc(uid).set(userdata.toMap());
  }

  // Save Order
  postOrder(String uid, String phoneNo, DateTime creation) async {
    Phonedata orderdata = Phonedata(
      uid: uid,
      phoneNumber: phoneNo,
      creationDate: creation,
    );
    await _userRef.collection('orders').doc(uid).set(orderdata.toMap());
  }

  // Save transaction data
  postTransaction(String uid, String phoneNo, DateTime creation) async {
    Phonedata data = Phonedata(
      uid: uid,
      phoneNumber: phoneNo,
      creationDate: creation,
    );
    await _userRef.collection('userTransactions').doc(uid).set(data.toMap());
  }

  // Save Order
  //place order
  // Future placeOrder(OrderModel orderModel) async {
  //   DocumentReference df = _userRef.collection("orderCollection").doc();
  //   return await df.set(orderModel.toJson(orderID: df.id.toString()));
  // }
}
