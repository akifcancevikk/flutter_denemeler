// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class QuickAlertPage extends StatefulWidget {
  const QuickAlertPage({super.key});

  @override
  State<QuickAlertPage> createState() => _QuickAlertPageState();
}

class _QuickAlertPageState extends State<QuickAlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Quick Alert Page'),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            ElevatedButton(
              onPressed: () {
                successMesagge(context);
              }, 
              child: Text('Başarılı Mesajı')),


            ElevatedButton(
              onPressed: () {
                errorMesagge(context);
              }, 
              child: Text('Hata Mesajı')),
            ElevatedButton(
              onPressed: () {
                infoMesagge(context);
              }, 
              child: Text('Bilgi Mesajı')),
            ElevatedButton(
              onPressed: () {
                warrningMesagge(context);
              }, 
              child: Text('Uyarı Mesajı')),
          ],
        ),
          ),
    );
  }
}

successMesagge(BuildContext context) {
  return QuickAlert.show(
    showCancelBtn: true,
    confirmBtnColor: Colors.green,
 context: context,
 type: QuickAlertType.success,
 text: 'Ürün Sepete Eklendi',
 confirmBtnText: 'Sepete Git',
 onConfirmBtnTap: () {
   ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Second button clicked!'),
      ),
    );
 },
 cancelBtnText: 'Tamam',
 onCancelBtnTap: () => Navigator.pop(context),
 title: 'Başarılı'
);
}

errorMesagge(BuildContext context) {
  return QuickAlert.show(
 context: context,
 type: QuickAlertType.error,
 text: 'Hata Oldu',
 confirmBtnText: 'Tamam',
 title: 'Hata'
);
}
infoMesagge(BuildContext context) {
  return QuickAlert.show(
 context: context,
 type: QuickAlertType.info,
 text: 'Bir Bilgi Verildi',
 confirmBtnText: 'Tamam',
 title: 'Bilgi'
);
}
warrningMesagge(BuildContext context) {
  return QuickAlert.show(
 context: context,
 type: QuickAlertType.warning,
 text: 'Bir Uyarı Verildi',
 confirmBtnText: 'Tamam',
 title: 'Uyarı'
);
}