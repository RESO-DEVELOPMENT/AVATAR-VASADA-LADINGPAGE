import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

import '../widgets/appbar.dart';

class QrScreen extends StatefulWidget {
  final String code;
  const QrScreen({super.key, required this.code});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<QrScreen> createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {
  bool loading = false;
  String? _url;
  @override
  void initState() {
    setState(() {
      _url = 'https://avatarvasada.com/customer?code=${widget.code}';
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg-home.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Builder(builder: (context) {
          if (loading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Center(
            child: Container(
              width: 400,
              height: 500,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Get.theme.colorScheme.shadow,
                    blurRadius: 2.0,
                    offset: const Offset(0.0, 2.0),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    flex: 3,
                    child: PrettyQrView(
                      qrImage: QrImage(QrCode(
                        8,
                        QrErrorCorrectLevel.H,
                      )..addData(_url ?? '')),
                      decoration: const PrettyQrDecoration(
                        image: PrettyQrDecorationImage(
                            image: NetworkImage(
                              'https://firebasestorage.googleapis.com/v0/b/pos-system-47f93.appspot.com/o/files%2Flogo.png?alt=media&token=1c00e07f-7a52-4d3c-9800-f2ad2283e430',
                            ),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Quét mã QR để lấy thông tin",
                    style: Get.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
