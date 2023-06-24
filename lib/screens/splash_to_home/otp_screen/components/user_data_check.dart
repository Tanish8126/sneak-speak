// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:newcbapp/screens/splash_to_home/otp_screen/frame/controller.dart';
// import 'package:provider/provider.dart';

// class LoginFormCheck extends StatelessWidget {
//   const LoginFormCheck({Key? key}) : super(key: key);
//   static String routeName = "/loginformcheck";

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: OtpScreenController()
//           .getUserdata(FirebaseAuth.instance.currentUser != null
//               ? FirebaseAuth.instance.currentUser!.uid
//               : null)
//           .then((value) {
//         // if (value != null) {
//         //   Provider.of<UserProvider2>(context, listen: false).setUser(
//         //     FormData.fromMap(value),
//         //   );
//         // }
//         // return value;
//       }),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const LoadingIndicator();
//         }

//         if (snapshot.hasData) {
//           return const HomeScreen();
//         }
//         return const SignUpFormScreen();
//       },
//     );
//   }
// }
