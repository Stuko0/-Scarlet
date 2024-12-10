import "package:flutter/material.dart";
import "package:scarlet_app/screens/personalization/splash_screen_page.dart";
import "package:scarlet_app/widgets/navbar.dart";

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    "/": (BuildContext context) => const ScreenSplash(),
    "-": (BuildContext context) => const NavBar(initialIndex: 2,)
  };
}
