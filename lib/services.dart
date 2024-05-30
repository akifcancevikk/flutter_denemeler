import 'dart:convert';
import 'package:flutter_denemeler/api.dart';
import 'package:flutter_denemeler/models/user_cari.dart';
import 'package:flutter_denemeler/variable_and_lists/global_lists.dart';



Future<void> getUserCari() async {
    await Api.getUserCari().then((response) {
      if (response.statusCode == 200) {
        Iterable list = json.decode(response.body);
        GlobalLists.userCariList = list.map((e) => UserCari.fromMap(e)).toList();
      }
    });
  }