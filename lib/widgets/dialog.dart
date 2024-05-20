import 'package:avatar_vasada/models/customer_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

import '../theme/theme.dart';

Future<bool> showAlertDialog(
    {String title = "Thông báo",
    String content = "Nội dung thông báo",
    String confirmText = "Đồng ý"}) async {
  hideDialog();
  bool result = false;
  await Get.dialog(Dialog(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0))),
    child: Container(
      width: Get.size.width * 0.3,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Get.theme.colorScheme.background,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Get.theme.colorScheme.shadow,
            blurRadius: 10.0,
            offset: const Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: Get.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              content,
              style: Get.textTheme.bodyMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  result = false;
                  hideDialog();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ThemeColor.primaryColor,
                  textStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: Text(confirmText,
                    style: Get.textTheme.bodyMedium
                        ?.copyWith(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    ),
  ));
  return result;
}

Future<bool> showConfirmDialog(
    {String title = "Xác nhận",
    String content = "Bạn có chắc chắn muốn thực hiện thao tác này?",
    String confirmText = "Xác nhận",
    String cancelText = "Hủy"}) async {
  hideDialog();
  bool result = false;
  await Get.dialog(Dialog(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0))),
    child: Container(
      width: Get.size.width * 0.5,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Get.theme.colorScheme.background,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Get.theme.colorScheme.shadow,
            blurRadius: 10.0,
            offset: const Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: Get.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              content,
              style: Get.textTheme.bodyMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  hideDialog();
                },
                child: Text(
                  cancelText,
                  style: Get.textTheme.titleMedium,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  hideDialog();
                  result = true;
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ThemeColor.primaryColor,
                  textStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: Text(confirmText,
                    style: Get.textTheme.bodyMedium
                        ?.copyWith(color: Colors.white)),
              ),
            ],
          )
        ],
      ),
    ),
  ));
  return result;
}

showLoadingDialog() {
  hideDialog();
  Get.dialog(Dialog(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0))),
    child: Container(
      width: Get.size.width * 0.3,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Get.theme.colorScheme.background,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Get.theme.colorScheme.shadow,
            blurRadius: 10.0,
            offset: const Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const CircularProgressIndicator(),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Đang xử lý...",
            style: Get.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  ));
}

showCustomerInfoDialog(CustomerResponse? customer) {
  hideDialog();
  Get.dialog(Dialog(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0))),
    child: Container(
      width: Get.size.width * 0.3,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Get.theme.colorScheme.background,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Get.theme.colorScheme.shadow,
            blurRadius: 10.0,
            offset: const Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            customer?.data?.name ?? '',
            style: Get.textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            customer?.data?.phone ?? '',
            style: Get.textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            flex: 3,
            child: PrettyQrView(
              qrImage: QrImage(QrCode(
                8,
                QrErrorCorrectLevel.H,
              )..addData(customer?.data?.url ?? '')),
              decoration: const PrettyQrDecoration(
                image: PrettyQrDecorationImage(
                    image: NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/pos-system-47f93.appspot.com/o/files%2Favatar-vasada.png?alt=media&token=ea52a9a7-d54f-4291-88b4-f7e8db233dec',
                    ),
                    fit: BoxFit.fitWidth),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            customer?.message ?? '',
            style: Get.textTheme.labelMedium,
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
  ));
}

void hideDialog() {
  if (Get.isDialogOpen ?? false) {
    Get.back();
  }
}

void hideSnackbar() {
  if (Get.isSnackbarOpen) {
    Get.back();
  }
}

void hideBottomSheet() {
  if (Get.isBottomSheetOpen ?? false) {
    Get.back();
  }
}

Future<String?> inputDialog(
    String title, String hint, String? value, String confirmText,
    {bool isNum = false}) async {
  hideDialog();
  String? result = value;
  TextEditingController controller = TextEditingController(text: value);
  await Get.dialog(AlertDialog(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    title: Text(
      title,
      style: Get.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
    ),
    content: TextField(
      keyboardType: isNum ? TextInputType.number : TextInputType.text,
      inputFormatters:
          isNum ? [FilteringTextInputFormatter.digitsOnly] : null, // Only numb
      controller: controller,
      decoration:
          InputDecoration(hintText: hint, hintStyle: Get.textTheme.labelSmall),
      onSubmitted: (value) => {},
    ),
    actions: [
      TextButton(
          onPressed: () {
            result = null;
            Get.back();
          },
          child: const Text('Huỷ')),
      ElevatedButton(
        onPressed: () {
          result = controller.text;
          Get.back();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeColor.primaryColor,
          textStyle: const TextStyle(
            color: Colors.white,
          ),
        ),
        child: Text(confirmText,
            style: Get.textTheme.bodyMedium?.copyWith(color: Colors.white)),
      ),
    ],
  ));
  return result;
}
