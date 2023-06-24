class EmailData {
  final String uid;
  final String email;
  final String photoUrl;
  final String userName;
  final DateTime creationDate;

  EmailData(
      {required this.photoUrl,
      required this.userName,
      required this.uid,
      required this.email,
      required this.creationDate});

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'userName': userName,
      'photoUrl': photoUrl,
      'creationDate': creationDate
    };
  }

  factory EmailData.fromMap(Map<String, dynamic> map) {
    return EmailData(
      uid: map['uid'] ?? '',
      email: map['email'] ?? '',
      photoUrl: map['photoUrl'] ?? '',
      userName: map['userName'] ?? '',
      creationDate: map[''] ?? '',
    );
  }
}
