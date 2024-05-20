import 'dart:io';

import 'package:avatar_vasada/utils/request.dart';
import 'package:avatar_vasada/views/customer.dart';
import 'package:avatar_vasada/views/qr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';
import 'theme/theme.dart';
import 'utils/routes_constraints.dart';
import 'views/home.dart';
import 'views/not_found_screen.dart';
import 'views/search.dart';

void main() {
  if (!GetPlatform.isWeb) {
    HttpOverrides.global = MyHttpOverrides();
  }
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Avatar Vasada',
      debugShowCheckedModeBanner: false,
      theme: dark(),
      themeMode: ThemeMode.dark,
      getPages: [
        GetPage(
            name: RouteHandler.HOME,
            page: () => const MyHomePage(),
            transition: Transition.zoom),
        GetPage(
            name: RouteHandler.SEARCH,
            page: () => const SearchScreen(),
            transition: Transition.zoom),
        GetPage(
            name: RouteHandler.QR,
            page: () => QrScreen(
                  code: Get.parameters['code'] ?? '',
                ),
            transition: Transition.cupertino),
        GetPage(
            name: RouteHandler.CUSTOMER,
            page: () => CustomerScreen(
                  code: Get.parameters['code'] ?? '',
                ),
            transition: Transition.cupertino),
      ],
      initialRoute: RouteHandler.HOME,
      unknownRoute:
          GetPage(name: RouteHandler.NAV, page: () => const NotFoundScreen()),
    );
  }
}
