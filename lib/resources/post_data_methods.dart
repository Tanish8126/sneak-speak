import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:sneak_speak/models/feed_model.dart';

import '../models/phone_data_model.dart';

class PostDataMethods {
  final _userRef = FirebaseFirestore.instance;

  //================USER RELATED=============//

  //Save Mobile Number to Firebase
  postMobileData(String uid, String phoneNo, DateTime creation) async {
    Phonedata userdata = Phonedata(
      uid: uid,
      phoneNumber: phoneNo,
      creationDate: creation,
    );
    await _userRef.collection('userData').doc(uid).set(userdata.toMap());
  }

  //Save Mobile Number to Firebase
  void addLikeToTweet(FeedModel tweet, String userId) async {
    // FirebaseFirestore.instance
    //     .collection('tweet')
    //     .doc(tweet.key!)
    //     .collection('likeList')
    //     .doc()
    //     .set(tweet.likeCount);
    FirebaseDatabase.instance
        .ref('')
        .child('tweet')
        .child(tweet.key!)
        .child('likeList')
        .set(tweet.likeList);
  }
}
