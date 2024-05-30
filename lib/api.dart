import 'dart:convert';

import 'package:http/http.dart' as http;

const baseUrl = "http://restapi.aktekweb.com/api/b2bapi/";

class Api{
   static Future<http.Response> getUserCari() async{
  var url = "${baseUrl}getUserCari";
  String body = json.encode({'temKod': 'P001'});
  return await http.post(Uri.parse(url), headers: {"Content-Type":"application/json"}, body: body);
}
}