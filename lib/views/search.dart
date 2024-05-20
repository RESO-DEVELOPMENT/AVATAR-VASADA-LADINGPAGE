import 'package:avatar_vasada/utils/routes_constraints.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/appbar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    super.key,
  });

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool loading = false;

  TextEditingController codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg-home.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Builder(builder: (context) {
          if (loading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 260,
                child: TextFormField(
                  controller: codeController,
                  style: Get.textTheme.bodyMedium,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Mã code không được để trống";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Vui lòng nhập mã",
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    filled: true,
                    isDense: true,
                    fillColor: Get.theme.colorScheme.background,
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        codeController.clear();
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: BorderSide(
                            color: Get.theme.colorScheme.primaryContainer,
                            width: 2.0)),
                    contentPadding: EdgeInsets.all(16),
                    hintStyle: Get.textTheme.bodyMedium,
                    isCollapsed: true,
                  ),
                  maxLines: 1,
                  cursorColor: Get.theme.colorScheme.onBackground,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              FilledButton(
                style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll<Color>(Colors.black)),
                onPressed: () => Get.toNamed(
                    "${RouteHandler.CUSTOMER}?code=${codeController.text}"),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "Tìm",
                    style: Get.textTheme.bodyLarge?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w100),
                  ),
                ),
              )
            ],
          ));
        }),
      ),
    );
  }
}
