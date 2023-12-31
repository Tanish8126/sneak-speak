import 'package:flutter/material.dart';

import '../screens/create_tweet_screen/create_tweet_screen.dart';
import '../screens/messages_screen/messages_screen.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/main_screen/main_screen.dart';
import '../screens/chat_screen/chat_screen.dart';
import '../screens/network_screen/network_screen.dart';
import '../screens/profile_screen/components/editprofile_screen.dart';
import '../screens/profile_screen/components/followers_screen.dart';
import '../screens/profile_screen/profile_screen.dart';
import '../screens/splash_to_home/login_check/login_check.dart';
import '../screens/splash_to_home/otp_screen/otp_screen.dart';
import '../screens/splash_to_home/phone_auth_screen/phone_auth_screen.dart';
import '../screens/splash_to_home/signup_form_screen/signup_form_screen.dart';
import '../screens/splash_to_home/splash_screen/splash_screen.dart';
import '../screens/home_screen/alien_home/alien_home.dart';
import '../screens/home_screen/native_home/native_part.dart';
import '../screens/profile_screen/followers/followers.dart';
import '../screens/profile_screen/following/following.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginCheck.routeName: (context) => const LoginCheck(),
  PhoneAuthScreen.routeName: (context) => const PhoneAuthScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  SignupFormScreen.routeName: (context) => const SignupFormScreen(),
  MainScreen.routeName: (context) => const MainScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  CreateTweetScreen.routeName: (context) => const CreateTweetScreen(),
  AlienHome.routeName: (context) => const AlienHome(),
  NativeHome.roteName: (context) => const NativeHome(),
  NetworkScreen.routeName: (context) => const NetworkScreen(),
  MessagesScreen.routeName: (context) => const MessagesScreen(),
  ChatScreen.routeName: (context) => const ChatScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  EditProfileScreen.routeName: (context) => const EditProfileScreen(),
  FollowersScreen.routeName: (context) => const FollowersScreen(),
  Followers.roteName: (context) => const Followers(),
  Following.roteName: (context) => const Following(),
};
