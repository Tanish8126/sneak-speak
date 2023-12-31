// ignore_for_file: prefer_null_aware_operators

import 'user_model.dart';

class FeedModel {
  String? key;
  String? parentkey;
  late String description;
  late String userId;
  int? likeCount;
  List<String>? likeList;
  int? commentCount;
  dynamic createdAt;
  String? imagePath;
  UserModel? user;

  FeedModel({
    this.key,
    required this.description,
    required this.userId,
    this.likeCount,
    this.commentCount,
    required this.createdAt,
    this.imagePath,
    this.likeList,
    this.user,
    this.parentkey,
  });

  toJson() {
    return {
      "userId": userId,
      "description": description,
      "likeCount": likeCount,
      "commentCount": commentCount ?? 0,
      "createdAt": createdAt,
      "imagePath": imagePath,
      "likeList": likeList,
      "user": user == null ? null : user!.toJson(),
      "parentkey": parentkey,
    };
  }

  Map<String, dynamic> toMap() {
    return {
      "userId": userId,
      "description": description,
      "likeCount": likeCount,
      "commentCount": commentCount ?? 0,
      "createdAt": createdAt,
      "imagePath": imagePath,
      "likeList": likeList,
      "user": user == null ? null : user!.toJson(),
      "parentkey": parentkey,
    };
  }

  FeedModel.fromMap(Map<dynamic, dynamic> map) {
    key = map['key'];
    description = map['description'];
    userId = map['userId'];
    likeCount = map['likeCount'] ?? 0;
    commentCount = map['commentCount'];
    imagePath = map['imagePath'];
    createdAt = map['createdAt'];
    imagePath = map['imagePath'];
    user = UserModel.fromJson(map['user']);
    parentkey = map['parentkey'];

    if (map["likeList"] != null) {
      likeList = <String>[];
      final list = map['likeList'];

      /// In new tweet db schema likeList is stored as a List<String>()
      if (list is List) {
        map['likeList'].forEach((value) {
          if (value is String) {
            likeList!.add(value);
          }
        });
        likeCount = likeList!.length;
      }

      /// In old database tweet db schema likeList is saved in the form of map
      /// like list map is removed from latest code but to support old schema below code is required
      /// Once all user migrated to new version like list map support will be removed
      else if (list is Map) {
        list.forEach((key, value) {
          likeList!.add(value["userId"]);
        });
        likeCount = list.length;
      }
    } else {
      likeList = [];
      likeCount = 0;
    }
  }

  // bool get isValidTweet {
  //   bool isValid = false;
  //   if (user != null && user!.userName != null && user!.userName!.isNotEmpty) {
  //     isValid = true;
  //   } else {
  //     if (kDebugMode) {
  //       print("Invalid Tweet found. Id:- $key");
  //     }
  //   }
  //   return isValid;
  // }
}
