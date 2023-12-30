import 'package:flutter/material.dart';

import '../screens/events_screen/events_screen.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/main_screen/main_screen.dart';
import '../screens/message_screen/message_screen.dart';
import '../screens/network_screen/network_screen.dart';
import '../screens/profile_screen/components/editprofile_screen.dart';
import '../screens/profile_screen/components/followers_screen.dart';
import '../screens/profile_screen/profile_screen.dart';
import '../screens/splash_to_home/login_check/login_check.dart';
import '../screens/splash_to_home/otp_screen/otp_screen.dart';
import '../screens/splash_to_home/phone_auth_screen/phone_auth_screen.dart';
import '../screens/splash_to_home/signup_form_screen/signup_form_screen.dart';
import '../screens/splash_to_home/splash_screen/splash_screen.dart';
import '../screens/widget.home/alien_home/alien_home.dart';
import '../screens/widget.home/native_home/native_part.dart';
import '../screens/widget.profile/followers/followers.dart';
import '../screens/widget.profile/following/following.dart';

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
  AlienHome.routeName: (context) => const AlienHome(),
  NativeHome.roteName: (context) => const NativeHome(),
  NetworkScreen.routeName: (context) => const NetworkScreen(),
  EventsScreen.routeName: (context) => const EventsScreen(),
  MessageScreen.routeName: (context) => const MessageScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  EditProfileScreen.routeName: (context) => const EditProfileScreen(),
  FollowersScreen.routeName: (context) => const FollowersScreen(),
  Followers.roteName: (context) => const Followers(),
  Following.roteName: (context) => const Following(),
};
