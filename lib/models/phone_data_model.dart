class Phonedata {
  final String uid;
  final String phoneNumber;
  final DateTime creationDate;

  Phonedata(
      {required this.uid,
      required this.phoneNumber,
      required this.creationDate});

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'phoneNumber': phoneNumber,
      'creationDate': creationDate
    };
  }

  factory Phonedata.fromMap(Map<String, dynamic> map) {
    return Phonedata(
      uid: map['uid'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      creationDate: map[''] ?? '',
    );
  }
}
