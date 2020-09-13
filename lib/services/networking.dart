import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response res = await http.get(url);
    if (res.statusCode == 200) {
      String data = res.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(res.statusCode);
    }
  }
}
