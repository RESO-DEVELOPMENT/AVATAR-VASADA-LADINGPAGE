import 'package:avatar_vasada/api/apiServices.dart';
import 'package:avatar_vasada/models/customer_response.dart';
import 'package:avatar_vasada/theme/theme.dart';
import 'package:avatar_vasada/utils/request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher_web/url_launcher_web.dart';
import '../widgets/appbar.dart';
import '../widgets/dialog.dart';

class CustomerScreen extends StatefulWidget {
  final String code;
  const CustomerScreen({super.key, required this.code});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  CustomerResponse? customer;
  bool loading = false;
  String? qrCode;
  @override
  void initState() {
    setState(() {
      loading = true;
    });
    ApiServices.getDriver(widget.code).then((value) => {
          if (value?.status == "FAILED")
            {
              showAlertDialog(
                  title: "Lỗi", content: value?.message ?? 'Unknown'),
              Get.back()
            }
          else if (value?.status == "SUCCESS" && value?.data != null)
            {
              setState(() {
                customer = value;
                loading = false;
              })
            }
        });
    super.initState();
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
      backgroundColor: Colors.transparent,
      appBar: homeAppbar(),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://firebasestorage.googleapis.com/v0/b/pos-system-47f93.appspot.com/o/files%2Fbg2.jpg?alt=media&token=beca8c3e-7e08-415c-a795-73a5da9d955d"),
            fit: BoxFit.contain,
          ),
        ),
        child: Builder(builder: (context) {
          if (loading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Center(
            child: Container(
              padding: const EdgeInsets.all(32),
              width: Get.width * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Xin chào",
                    style: Get.textTheme.displaySmall,
                  ),
                  Text(customer?.data?.name ?? '',
                      style: Get.textTheme.displayMedium
                          ?.copyWith(color: ThemeColor.primaryColor)),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Nhấn vào",
                    style: Get.textTheme.headlineLarge,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ThemeColor.primaryColor,
                        disabledBackgroundColor: ThemeColor.primaryColor,
                      ),
                      onPressed: () {
                        launchUrl(
                          Uri.parse(customer?.data?.url ?? ''),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      label: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Đây",
                          style: Get.textTheme.headlineLarge
                              ?.copyWith(color: Colors.white),
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Để chuyển đến trang thông tin",
                    style: Get.textTheme.headlineLarge,
                  ),
                ],
              ),
            ),
          );
        }),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async => {
      //     await inputDialog("Vui lòng nhập số điện thoại", "SĐT", null, 'Tìm')
      //         .then((value) => search(value ?? ''))
      //   },
      //   tooltip: 'Find Image By Phone',
      //   child: const Icon(Icons.search),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
