// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneNumberFormatterPage extends StatefulWidget {
  const PhoneNumberFormatterPage({super.key});

  @override
  State<PhoneNumberFormatterPage> createState() => _PhoneNumberFormatterPageState();
}

class _PhoneNumberFormatterPageState extends State<PhoneNumberFormatterPage> {
  final _controller = TextEditingController();

  // Mask formatter for phone number
  final maskFormatter = MaskTextInputFormatter(
    mask: '(###) ### ## ##',
    filter: { "#": RegExp(r'[0-9]') },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Phone Number Formatter Page'),),
      body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _controller,
            keyboardType: TextInputType.phone,
            inputFormatters: [maskFormatter],
            decoration: InputDecoration(
              labelText: 'Phone Number',
              hintText: '(xxx) xxx xx xx',
            ),
          ),
        ],
      ),
    ),
    );
  }
}