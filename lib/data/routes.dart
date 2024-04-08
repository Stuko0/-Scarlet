import "package:flutter/material.dart";
import "package:scarlet_app/screens/personalization/splash_screen_page.dart";

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    "/": (BuildContext context) => const ScreenSplash(),
  };
}
