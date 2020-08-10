import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:AquaScapeBali/views/home/home_view.dart';
import 'package:AquaScapeBali/views/about/about_view.dart';
import 'package:AquaScapeBali/views/gallery/gallery_view.dart';
import 'package:AquaScapeBali/views/contacts/contact_view.dart';

import 'route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings);
    case AboutRoute:
      return _getPageRoute(AboutView(), settings);
    case GalleryRoute:
      return _getPageRoute(GalleryView(), settings);
    case ContactRoute:
      return _getPageRoute(ContactView(), settings);
    default:
      return _getPageRoute(HomeView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
