import 'dart:async';
import 'dart:convert' as convert;

import 'package:avatar_vasada/models/customer_response.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static const baseUrl = 'https://script.google.com/macros';
  static const getInfo =
      "s/AKfycbz1dEub0OYaMejyAW7VnrSpu3o5LEglxCYyJedfBr5kiVl1c-glapsJUggqzUtfNg00Uw/exec";

//https://deliveryvhgp-webapi.azurewebsites.net/api/v1/shipper-management/shippers/ByShipId?id=1
  static Future<CustomerResponse?> getDriver(
    String phone,
  ) async {
    print('getDriver');
    var driverModel = Completer<CustomerResponse>();
    var body;
    try {
      var response = await http.get(
        Uri.parse(
            'https://script.google.com/macros/s/AKfycbwidRitYn2p2-e7PVzL2QWppq0_9xqiFlI6q0VdVbY8fsjpTn2Q8tWsygoeoBUgEyX4fQ/exec?code=$phone'),
      );
      body = convert.jsonDecode(response.body);
      print(body);
      driverModel.complete(CustomerResponse.fromJson(body));
    } catch (_) {
      driverModel.complete(CustomerResponse.fromJson(body));
    }
    return driverModel.future;
  }
}
