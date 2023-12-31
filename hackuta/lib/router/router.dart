// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:philia/addfirends/addfriends_screen.dart';
import 'package:philia/login/sigin_in_screen.dart';
import 'package:philia/router/StringExtension.dart';
import 'package:philia/router/route_names.dart';
import 'package:philia/signup/add_personal_details.dart';
import 'package:philia/signup/signup_screen.dart';
import 'package:philia/wishes/create_post_screen.dart';
import 'package:philia/wishes/model/share_post_data.dart';
import 'package:philia/wishes/share_post_screen.dart';

import '../Home/DashboardBaseScreen.dart';
import '../splash_screen/SplashScreen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  var routingData = settings.name!.getRoutingData;
  String route = routingData.route;

  switch (route) {
    case splashRoute:
      return _getPageRoute(SplashScreen(), settings);
    case signinRoute:
      return _getPageRoute(SignInScreen(), settings);
    case signupRoute:
      return _getPageRoute(SignupScreen(), settings);

    case create_post_route:
      return _getPageRoute(CreatePostScreen(), settings);
    case addPersonalDetails:
      return _getPageRoute(AddPersonalDetails(), settings);
    case sharePostScreen:
      return _getPageRoute(
          SharePostScreen(sharedPostData: settings.arguments as SharedPostData),
          settings);
    case dashboardRoute:
      return _getPageRoute(DashboardBaseScreen(), settings);

    case addFriendsRoute:
      return _getPageRoute(AddFriends(), settings);
    default:
      return _getPageRoute(SplashScreen(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name!);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;

  _FadeRoute({required this.child, required this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return child;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          transitionDuration: Duration(milliseconds: 100),
        );
}
