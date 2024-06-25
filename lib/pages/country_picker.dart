// ignore_for_file: prefer_const_constructors

import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

class CountryPickerPage extends StatefulWidget {
  const CountryPickerPage({super.key});

  @override
  State<CountryPickerPage> createState() => _CountryPickerPageState();
}

class _CountryPickerPageState extends State<CountryPickerPage> {
   String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Country Picker',
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Center(
         child: Column(
           children: [
             CSCPicker(
              layout: Layout.vertical,
              flagState: CountryFlag.ENABLE,
              onCountryChanged: (country) {},
              countryDropdownLabel: 'Ülke Seçin',
              countrySearchPlaceholder: 'Ülke İsmi Girin',
              onStateChanged: (country) {},
              stateDropdownLabel: 'Şehir Seçin',
              stateSearchPlaceholder: 'Şehir İsmi Girin',
              onCityChanged: (country) {},
              cityDropdownLabel: 'İlçe Seçin',
              citySearchPlaceholder: 'İlçe İsmi Girin',
             ),
             Text(countryValue + stateValue + cityValue)
           ],
         ),
        ),
        );
  }
}