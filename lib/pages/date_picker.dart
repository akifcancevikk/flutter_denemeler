// ignore_for_file: prefer_const_constructors

import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerPage extends StatefulWidget {
  const DatePickerPage({super.key});

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Date Picker Page'),),
      body: Center(
        child: RangeDatePicker(
          maxDate: DateTime.now(), 
          minDate: DateTime(2020, 10, 30)
          ),
      ),
    );
  }
}