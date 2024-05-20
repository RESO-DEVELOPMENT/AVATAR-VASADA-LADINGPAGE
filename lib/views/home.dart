import 'package:avatar_vasada/api/apiServices.dart';
import 'package:avatar_vasada/models/customer_response.dart';
import 'package:avatar_vasada/utils/routes_constraints.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/theme.dart';
import '../widgets/appbar.dart';
import '../widgets/footer.dart';
import '../widgets/community.dart';
import '../widgets/dialog.dart';
import '../widgets/home1.dart';
import '../widgets/home2.dart';
import '../widgets/home4.dart';
import '../widgets/home5.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CustomerResponse? customer;
  String? qrCode;
  void search(String phone) {
    showLoadingDialog();
    ApiServices.getDriver(phone).then((value) => {
          if (value?.status == "FAILED")
            {
              showAlertDialog(
                  title: "Lỗi", content: value?.message ?? 'Unknown')
            }
          else if (value?.status == "SUCCESS" && value?.data != null)
            {showCustomerInfoDialog(value)}
        });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: homeAppbar(),
        body: ListView(shrinkWrap: true, children: [
          HomePage1(),
          HomePage2(),
          Home4(),
          HomePage5(),
          Community(),
          Footer()
        ]));
  }
}
