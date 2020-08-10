import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:AquaScapeBali/locator.dart';
import 'package:AquaScapeBali/routing/route_names.dart';
import 'package:AquaScapeBali/routing/router.dart';
import 'package:AquaScapeBali/services/navigation_service.dart';
import 'package:AquaScapeBali/widgets/centered_view/centered_view.dart';
import 'package:AquaScapeBali/widgets/navigation_bar/navigation_bar.dart';
import 'package:AquaScapeBali/widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              )
            ],
          ),
        ),
        // bottomNavigationBar: Container(
        //   color: Colors.transparent,
        //   height: 23,
        //   child: Center(
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[Icon(Icons.pin_drop), Text("Denpasar - Bali")],
        //     ),
        //   ),
        // ),
        bottomNavigationBar: Container(
          // alignment: Alignment.topCenter,
          height: 30.0,
          color: Colors.blueAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.pin_drop_outlined,
                color: Colors.white,
              ),
              Text(
                "Denpasar - Bali",
                style: TextStyle(
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
