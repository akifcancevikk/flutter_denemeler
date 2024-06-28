// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ShowModalBottomSheetMessagePage extends StatefulWidget {
  const ShowModalBottomSheetMessagePage({super.key});

  @override
  State<ShowModalBottomSheetMessagePage> createState() => _ShowModalBottomSheetMessagePageState();
}

class _ShowModalBottomSheetMessagePageState extends State<ShowModalBottomSheetMessagePage> {

  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Second button clicked!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('ShowModal Bottom Sheet Message Page'),),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context, 
              builder: (BuildContext context) {
                return Builder(
                  builder: (BuildContext newContext) {
                    return SizedBox(
                      width: double.infinity,
                      height: 500,
                      child: ElevatedButton(
                        onPressed: () {
                          _showSnackbar(newContext);
                        }, 
                        child: Text('Click Second')
                      ),
                    );
                  }
                );
              },
            );
          }, 
          child: Text('Click')
        ),
      ),
    );
  }
}
