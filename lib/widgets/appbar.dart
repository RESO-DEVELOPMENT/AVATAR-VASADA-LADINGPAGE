import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../utils/routes_constraints.dart';

AppBar homeAppbar() {
  return AppBar(
    toolbarHeight: 60,
    foregroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    leadingWidth: 160,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Get.toNamed(RouteHandler.HOME),
        child: Image.asset(
          "assets/images/logo.png",
          fit: BoxFit.fitHeight,
        ),
      ),
    ),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () => Get.toNamed(RouteHandler.HOME),
            child: Text(
              "Home",
              style: Get.textTheme.bodyMedium,
            )),
        TextButton(
            onPressed: null,
            child: Text(
              "About Us",
              style: Get.textTheme.bodyMedium,
            )),
        TextButton(
            onPressed: null,
            child: Text(
              "Blogs",
              style: Get.textTheme.bodyMedium,
            )),
        TextButton(
            onPressed: null,
            child: Text(
              "Contact",
              style: Get.textTheme.bodyMedium,
            )),
      ],
    ),
    actionsIconTheme: IconThemeData(size: 32, color: Colors.white),
    actions: const [
      Icon(Icons.facebook),
      TextButton(onPressed: null, child: Text("VI")),
      TextButton(onPressed: null, child: Text("EN")),
      SizedBox(
        width: 32,
      )
    ],
  );
}
