// ignore_for_file: prefer_const_constructors

import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart'; // Yerel veri dosyalarını yüklemek için gerekli import

class DatePickerPage extends StatefulWidget {
  const DatePickerPage({super.key});

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class DateFormatter {
  static DateFormat trDateFormat = DateFormat('d MMM yyyy EEEE', 'tr_TR');

  // String tipi yerine DateTime tipi kabul edilecek şekilde güncellendi
  static String formatDate(DateTime dateTime) {
    return trDateFormat.format(dateTime);
  }
}

class _DatePickerPageState extends State<DatePickerPage> {
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    // Yerel ayar verilerini yüklemek için initializeDateFormatting'i çağırıyoruz
    initializeDateFormatting().then((_) {
      setState(() {}); // Yerel veriler yüklendikten sonra durumu yeniliyoruz
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Date Picker Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RangeDatePicker(
            maxDate: DateTime.now(),
            minDate: DateTime(2020, 10, 30),
            onRangeSelected: (value) {
              setState(() {
                startDate = value.start;
                endDate = value.end;
              });
            },
          ),
          Text('Başlangıç Tarihi: ${DateFormatter.formatDate(startDate)}'),
          Text('Bitiş Tarihi: ${DateFormatter.formatDate(endDate)}'),
        ],
      ),
    );
  }
}
