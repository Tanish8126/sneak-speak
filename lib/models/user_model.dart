// ignore_for_file: prefer_null_aware_operators

import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class UserModel extends Equatable {
  String? key;
  String? userId;
  String? displayName;
  String? userName;
  String? profilePic;
  String? bannerImage;
  String? location;
  String? createdAt;
//  bool? isVerified;
  int? followers;
  int? following;
  String? fcmToken;
  List<String>? followersList;
  List<String>? followingList;

  UserModel(
      {this.userId,
      this.displayName,
      this.profilePic,
      this.bannerImage,
      this.key,
      this.location,
      this.createdAt,
      this.userName,
      this.followers,
      this.following,
      //  this.isVerified,
      this.fcmToken,
      this.followersList,
      this.followingList});

  UserModel.fromJson(Map<dynamic, dynamic>? map) {
    if (map == null) {
      return;
    }
    followersList ??= [];
    userId = map['userId'];
    displayName = map['displayName'];
    profilePic = map['profilePic'];
    bannerImage = map['bannerImage'];
    key = map['key'];
    location = map['location'];
    createdAt = map['createdAt'];
    followers = map['followers'];
    following = map['following'];
    userName = map['userName'];
    fcmToken = map['fcmToken'];
    // isVerified = map['isVerified'] ?? false;
    // if (map['followerList'] != null) {
    //   followersList = <String>[];
    //   map['followerList'].forEach((value) {
    //     followersList!.add(value);
    //   });
    // }
    followers = followersList != null ? followersList!.length : null;
    if (map['followingList'] != null) {
      followingList = <String>[];
      map['followingList'].forEach((value) {
        followingList!.add(value);
      });
    }
    following = followingList != null ? followingList!.length : null;
  }
  toJson() {
    return {
      'key': key,
      "userId": userId,
      'displayName': displayName,
      'profilePic': profilePic,
      'bannerImage': bannerImage,
      'location': location,
      'createdAt': createdAt,
      'followers': followersList != null ? followersList!.length : null,
      'following': followingList != null ? followingList!.length : null,
      'userName': userName,
      // 'isVerified': isVerified ?? false,
      'fcmToken': fcmToken,
      'followerList': followersList,
      'followingList': followingList
    };
  }

  UserModel copyWith({
    String? email,
    String? userId,
    String? displayName,
    String? profilePic,
    String? key,
    String? contact,
    String? bio,
    String? dob,
    String? bannerImage,
    String? location,
    String? createdAt,
    String? userName,
    int? followers,
    int? following,
    String? webSite,
    // bool? isVerified,
    String? fcmToken,
    List<String>? followingList,
    List<String>? followersList,
  }) {
    return UserModel(
      createdAt: createdAt ?? this.createdAt,
      displayName: displayName ?? this.displayName,
      followers: followers ?? this.followers,
      following: following ?? this.following,
      // isVerified: isVerified ?? this.isVerified,
      key: key ?? this.key,
      location: location ?? this.location,
      profilePic: profilePic ?? this.profilePic,
      bannerImage: bannerImage ?? this.bannerImage,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      fcmToken: fcmToken ?? this.fcmToken,
      followersList: followersList ?? this.followersList,
      followingList: followingList ?? this.followingList,
    );
  }

  String get getFollower {
    return '${followers ?? 0}';
  }

  String get getFollowing {
    return '${following ?? 0}';
  }

  @override
  List<Object?> get props => [
        key,
        userId,
        displayName,
        userName,
        profilePic,
        bannerImage,
        location,
        createdAt,
        // isVerified,
        followers,
        following,
        fcmToken,
        followersList,
        followingList
      ];
}
