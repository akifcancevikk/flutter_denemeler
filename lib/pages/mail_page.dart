import 'package:flutter/material.dart';
import 'package:flutter_denemeler/mail.dart';


class MailPage extends StatefulWidget {
  const MailPage({super.key});

  @override
  State<MailPage> createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  final EmailService _emailService = EmailService();

  Future<void> _sendEmail() async {
    List<Map<String, dynamic>> items = [
      {
        'imageUrl': 'https://cdn.dsmcdn.com/ty22/product/media/images/20201111/23/25153364/104518907/1/1_org_zoom.jpg',
        'stockCode': 'AA001',
        'stockName': 'AKRİLİK MASTİK 310ML (NET 500 GR)',
        'quantity': 24,
        'grossAmount': '897,12 TL',
        'netAmount': '645,93 TL',
        'discount': '251,19 TL',
      },
      {
        'imageUrl': 'https://cdn.dsmcdn.com/ty22/product/media/images/20201111/23/25153364/104518907/1/1_org_zoom.jpg',
        'stockCode': 'AA001',
        'stockName': 'AKRİLİK MASTİK 310ML (NET 500 GR)',
        'quantity': 25,
        'grossAmount': '897,12 TL',
        'netAmount': '645,93 TL',
        'discount': '251,19 TL',
      },
      {
        'imageUrl': 'https://cdn.dsmcdn.com/ty22/product/media/images/20201111/23/25153364/104518907/1/1_org_zoom.jpg',
        'stockCode': 'AA001',
        'stockName': 'AKRİLİK MASTİK 310ML (NET 500 GR)',
        'quantity': 26,
        'grossAmount': '897,12 TL',
        'netAmount': '645,93 TL',
        'discount': '251,19 TL',
      },
      {
        'imageUrl': 'https://cdn.dsmcdn.com/ty22/product/media/images/20201111/23/25153364/104518907/1/1_org_zoom.jpg',
        'stockCode': 'AA001',
        'stockName': 'AKRİLİK MASTİK 310ML (NET 500 GR)',
        'quantity': 24,
        'grossAmount': '897,12 TL',
        'netAmount': '645,93 TL',
        'discount': '251,19 TL',
      },
      {
        'imageUrl': 'https://cdn.dsmcdn.com/ty22/product/media/images/20201111/23/25153364/104518907/1/1_org_zoom.jpg',
        'stockCode': 'AA001',
        'stockName': 'AKRİLİK MASTİK 310ML (NET 500 GR)',
        'quantity': 25,
        'grossAmount': '897,12 TL',
        'netAmount': '645,93 TL',
        'discount': '251,19 TL',
      },
      {
        'imageUrl': 'https://cdn.dsmcdn.com/ty22/product/media/images/20201111/23/25153364/104518907/1/1_org_zoom.jpg',
        'stockCode': 'AA001',
        'stockName': 'AKRİLİK MASTİK 310ML (NET 500 GR)',
        'quantity': 26,
        'grossAmount': '897,12 TL',
        'netAmount': '645,93 TL',
        'discount': '251,19 TL',
      },
      {
        'imageUrl': 'https://cdn.dsmcdn.com/ty22/product/media/images/20201111/23/25153364/104518907/1/1_org_zoom.jpg',
        'stockCode': 'AA001',
        'stockName': 'AKRİLİK MASTİK 310ML (NET 500 GR)',
        'quantity': 24,
        'grossAmount': '897,12 TL',
        'netAmount': '645,93 TL',
        'discount': '251,19 TL',
      },
      {
        'imageUrl': 'https://cdn.dsmcdn.com/ty22/product/media/images/20201111/23/25153364/104518907/1/1_org_zoom.jpg',
        'stockCode': 'AA001',
        'stockName': 'AKRİLİK MASTİK 310ML (NET 500 GR)',
        'quantity': 25,
        'grossAmount': '897,12 TL',
        'netAmount': '645,93 TL',
        'discount': '251,19 TL',
      },
      {
        'imageUrl': 'https://cdn.dsmcdn.com/ty22/product/media/images/20201111/23/25153364/104518907/1/1_org_zoom.jpg',
        'stockCode': 'AA001',
        'stockName': 'AKRİLİK MASTİK 310ML (NET 500 GR)',
        'quantity': 26,
        'grossAmount': '897,12 TL',
        'netAmount': '645,93 TL',
        'discount': '251,19 TL',
      },
  ];

    await _emailService.sendMail('aquif.cc@gmail.com', 'Sipariş Alındı [P006-1]', items);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mail Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _sendEmail,
          child: Text('Send Email with Dynamic Content'),
        ),
      ),
    );
  }
}
