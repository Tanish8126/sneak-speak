import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/feed_model.dart';
import '../models/phone_data_model.dart';
import '../utils/snackbar.dart';

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

  //================TWEET RELATED=============//

  //Save Tweet to Firebase

  Future<String> saveTweet(BuildContext context, String tweet) async {
    //  final user = Provider.of<UserProvider>(context, listen: false).user;
    String channelId = '';
    try {
      FeedModel feedModel = FeedModel(
          userId: '12345', createdAt: DateTime.now(), description: tweet);

      _userRef.collection('tweet').doc().set(feedModel.toMap());
    } on FirebaseException catch (e) {
      showSnackBar(context, e.message!);
    }
    return channelId;
  }

  //Add Like To Tweet
  void addLikeToTweet(FeedModel tweet, String userId) async {
    // FirebaseFirestore.instance
    //     .collection('tweet')
    //     .doc(tweet.key!)
    //     .collection('likeList')
    //     .doc()
    //     .set(tweet.likeCount);
  }

  //Add Bookmark to Tweet
  void addBookmark(FeedModel tweet, String userId) async {
    // FirebaseFirestore.instance
    //     .collection('tweet')
    //     .doc(tweet.key!)
    //     .collection('likeList')
    //     .doc()
    //     .set(tweet.likeCount);
  }

  //Add Comment to Tweet
  void commentToTweet(FeedModel tweet, String userId) async {
    // FirebaseFirestore.instance
    //     .collection('tweet')
    //     .doc(tweet.key!)
    //     .collection('likeList')
    //     .doc()
    //     .set(tweet.likeCount);
  }
}
