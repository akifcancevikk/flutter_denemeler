// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_denemeler/lists/student.dart';
import 'package:flutter_denemeler/models/student.dart';
import 'package:intl/intl.dart';

class FilterListPage extends StatefulWidget {
  const FilterListPage({super.key});

  @override
  State<FilterListPage> createState() => _FilterListPageState();
}

class _FilterListPageState extends State<FilterListPage> {
  List<Student> filteredStudents = [];
  String? selectedGender;
  int? minAge;
  int? maxAge;
  String studentNumber = '';
  DateTime? startDate;
  DateTime? endDate;

  @override
  void initState() {
    super.initState();
    filteredStudents = students;
    endDate = DateTime.now();
    startDate = DateTime.now().subtract(Duration(days: 365 * 20));
    filterStudents();
  }

  void filterStudents() {
    setState(() {
      filteredStudents = students.where((student) {
        bool matchesNumber = student.studentNumber.contains(studentNumber);
        bool matchesGender = selectedGender == null || selectedGender == 'Tümü' || student.gender == selectedGender;
        bool matchesAge = (minAge == null || student.age >= minAge!) && (maxAge == null || student.age <= maxAge!);
        bool matchesStartDate = startDate == null || student.birthDate.isAfter(startDate!) || student.birthDate.isAtSameMomentAs(startDate!);
        bool matchesEndDate = endDate == null || student.birthDate.isBefore(endDate!) || student.birthDate.isAtSameMomentAs(endDate!);
        return matchesNumber && matchesGender && matchesAge && matchesStartDate && matchesEndDate;
      }).toList();
    });
  }

  void clearFilters() {
    setState(() {
      studentNumber = '';
      selectedGender = null;
      minAge = null;
      maxAge = 22;
      startDate = DateTime.now().subtract(Duration(days: 365 * 5));
      endDate = DateTime.now();
      filterStudents();
    });
  }

  // Date Picker fonksiyonları
  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: startDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != startDate) {
      setState(() {
        startDate = picked;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: endDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != endDate) {
      setState(() {
        endDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Öğrenci Listesi'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Öğrenci Numarası'),
            onChanged: (value) {
              studentNumber = value;
            },
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(labelText: 'Min Yaş'),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    minAge = int.tryParse(value);
                  },
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(labelText: 'Max Yaş'),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    maxAge = int.tryParse(value)!;
                  },
                ),
              ),
            ],
          ),
          DropdownButton<String>(
            hint: Text('Cinsiyet Seçin'),
            value: selectedGender,
            items: ['Tümü', 'Erkek', 'Kadın']
                .map((gender) => DropdownMenuItem(
                      value: gender,
                      child: Text(gender),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                selectedGender = value;
              });
            },
          ),
          Row(
            children: [
              Expanded(
                child: ListTile(
                  title: Text("Başlangıç Tarihi"),
                  subtitle: Text(startDate == null ? 'Seçiniz' : DateFormat('dd/MM/yyyy').format(startDate!)),
                  onTap: () => _selectStartDate(context),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text("Bitiş Tarihi"),
                  subtitle: Text(endDate == null ? 'Seçiniz' : DateFormat('dd/MM/yyyy').format(endDate!)),
                  onTap: () => _selectEndDate(context),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: filterStudents,
                child: Text('Filtrele'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: clearFilters,
                child: Text('Temizle'),
                style: ElevatedButton.styleFrom(iconColor: Colors.red),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredStudents.length,
              itemBuilder: (context, index) {
                final student = filteredStudents[index];
                return ListTile(
                  title: Text(student.studentName),
                  subtitle: Text('Numara: ${student.studentNumber} - Yaş: ${student.age} - Cinsiyet: ${student.gender} - Yıl: ${student.birthDate}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
