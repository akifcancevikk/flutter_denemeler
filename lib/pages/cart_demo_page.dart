// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class CartDemoPage extends StatefulWidget {
  const CartDemoPage({super.key});

  @override
  State<CartDemoPage> createState() => _CartDemoPageState();
}

class _CartDemoPageState extends State<CartDemoPage> {
  bool _isExpanded = false;
  bool _isUpExpanded = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(centerTitle: true, title: Text('Cart Demo Page'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
               Container(
                height: _isUpExpanded == true
                ?550
                :100,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                     BoxShadow(
                       color: Colors.black.withOpacity(0.5),
                       offset: Offset(0, 3),
                       blurRadius: 6,
                     ),
                   ],
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(210, 10, 16, 1),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 20,
                      right: 20,
                      bottom: 15,
                      child: Text(
                        'Genel Toplam: 1.974,02₺',
                        style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),  
               ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                 child: ExpansionTileCard(
                  initiallyExpanded: true,
                  onExpansionChanged: (bool expanded) {
                setState(() {
                  _isUpExpanded = expanded;
                });
              },
                      trailing: Icon(
                        _isUpExpanded
                    ? Icons.arrow_drop_up_rounded
                    : Icons.arrow_drop_down_rounded,
                color: Colors.white,
              ),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20), bottom: Radius.circular(20)),
                  title: Text('Sipariş Detayı', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                  baseColor: Color.fromRGBO(210, 10, 16, 1),
                  expandedColor: Color.fromRGBO(210, 10, 16, 1),
                  children: [
                    
                  ],
                 )
               ),
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ExpansionTileCard(
              onExpansionChanged: (bool expanded) {
                setState(() {
                  _isExpanded = expanded;
                });
              },
              trailing: Icon(
                _isExpanded
            ? Icons.arrow_drop_up_rounded
            : Icons.arrow_drop_down_rounded,
        color: Colors.white,
      ),
      expandedTextColor: Colors.white,
      baseColor: Color.fromRGBO(210, 10, 16, 1),
      expandedColor: Color.fromRGBO(210, 10, 16, 1),
      borderRadius: BorderRadius.circular(20),
      title: const Text(
        'Diğer Tutar Bilgileri',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 16.0,
              left: 16.0,
              bottom: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ara Toplam: 2.685,05₺",
                  style: TextStyle(color: Colors.white, decoration: TextDecoration.lineThrough, decorationColor: Colors.white),
                ),
                Text(
                  "Genel Toplam: 1.974,02₺",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "İskonto Tutar: 1.074,02₺",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Net Tutar: 1.611,02₺",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "İskonto Oranı: %40",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "KDV: 322,21₺",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
         ),
        ],
       )
      ),         
     ],
    ),
   ),
  );
 }
}

