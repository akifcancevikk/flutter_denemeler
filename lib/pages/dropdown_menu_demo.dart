// ignore_for_file: prefer_const_constructors

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_denemeler/models/user_cari.dart';
import 'package:flutter_denemeler/variable_and_lists/global_lists.dart';

class DropdownDemoPage extends StatefulWidget {
  const DropdownDemoPage({super.key});

  @override
  State<DropdownDemoPage> createState() => _DropdownDemoPageState();
}

class _DropdownDemoPageState extends State<DropdownDemoPage> {
  String degisken = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Dropdown Menu Demo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: DropdownSearch<UserCari>(
          popupProps: PopupProps.menu(
            showSelectedItems: true,
            showSearchBox: true,
            searchFieldProps: TextFieldProps(
              decoration: InputDecoration(
                hintText: 'Cari Seçin',
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20), 
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(20)
                )
              )
            )
          ),
          items: GlobalLists.userCariList,
          onChanged: (value) {
            degisken = value!.cariKod;
          },
          selectedItem: GlobalLists.userCariList[0],
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(20)
              )
            )
          ),
          compareFn: (UserCari item, UserCari selectedItem) => item.cariKod == selectedItem.cariKod,
          itemAsString: (UserCari item) => item.cariUnvan,
         ),
      )
    );
  }
}
