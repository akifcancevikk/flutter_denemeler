// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ReportDetailPage extends StatefulWidget {
  const ReportDetailPage({super.key});

  @override
  State<ReportDetailPage> createState() => _ReportDetailPageState();
}

class _ReportDetailPageState extends State<ReportDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Report Detail Page'),),
      body: SlidingUpPanel(
        maxHeight: 700,
        collapsed: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 5,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Filtreleme Seçenekleri'),
              )
            ],
          ),
          decoration: BoxDecoration(
          color: Colors.red, 
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
          ),
          height: 10,
          ),
         backdropTapClosesPanel: true,
         backdropEnabled: true,
         borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      panel: Center(
        child: 
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20,40,20,10),
              child: Container(
                height: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  itemExtent: 40,
                  children: [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' / B2B Test Carisi', style: TextStyle(fontWeight: FontWeight.bold),),
                          Container(height: 30 ,width: 40,decoration: BoxDecoration(color: Colors.green.shade700, borderRadius: BorderRadius.circular(5)), child: Center(child: Text('Aktif', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))),
                        ],
                      ),
                      subtitle: Divider(thickness: 1,),
                    ),
                    ListTile(
                      leading: Icon(Icons.mail),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Cari Mail:'),
                          Text(' cemsevinc@msn.com'),
                        ],
                      ),
                      subtitle: Divider(thickness: 1,),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Cari Telefon: '),
                          Text('+90 5057055941'),
                        ],
                      ),
                      subtitle: Divider(thickness: 1,),
                    ),
                    ListTile(
                      leading: Icon(Icons.date_range_outlined),
                      title: Text('Son Sipariş Tarihi: 26 Temmuz 2024 Cuma'),
                      subtitle: Divider(thickness: 1,),
                    ),
                    ListTile(
                      leading: Icon(Icons.date_range_outlined),
                      title: Text('Son Giriş Tarihi: 26 Temmuz 2024 Cuma'),
                      subtitle: Divider(thickness: 1,),
                    ),
                    ListTile(
                      leading: Icon(Icons.commit_rounded),
                      title: Text('IP: 212.156.134.6'),
                      subtitle: Divider(thickness: 1,),
                    ),
                    ListTile(
                      leading: Icon(Icons.mail_outline),
                      title: Text('Temsilci: fatmaozturk@akdemirglobal.com'),
                      subtitle: Divider(thickness: 1,),
                    ),
                    ListTile(
                      leading: Icon(Icons.house_siding_sharp),
                      title: Text('Şube: P006-İSTOÇ ŞUBE'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                          child: Row(
                            children: [
                              Expanded(child: Container(color: Colors.grey, height: 80, child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Bakiye',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                    ),
                                  ),
                                  Text(
                                    '137.7296',
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                ],
                              ),
                             )
                            ),       
                              VerticalDivider(width: 1.2, color: Colors.white,),
                              Expanded(child: Container(color: Colors.grey, height: 80, child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Limit',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                    ),
                                  ),
                                  Text(
                                    '0',
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                ],
                              ),
                             )
                            ),                  
                            ],
                          ),
                        ),
                        Divider(thickness: 1, height: 0, color: Colors.white,),
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
                          child: Row(
                            children: [
                              Expanded(child: Container(color: Colors.grey, height: 80, child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Kalan',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                    ),
                                  ),
                                  Text(
                                    '-137.7296',
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                ],
                              ),)),
                              VerticalDivider(width: 1.2, color: Colors.white,),
                              Expanded(child: Container(color: Colors.grey, height: 80, child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'İskonto',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                    ),
                                  ),
                                  Text(
                                    'İzol. %28 - Dig %28',
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                ],
                              ),)),
                            ],
                          ),
                        ),   
                      ],
                    ),
                  )
          ],
        )
              ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 300),
          child: TextButton(
            child: Text('Click It'),
            onPressed: () {
              showDialog(context: context, builder: (context) {
                return AlertDialog(
                  title: Text('Alert'),
                );
              },);
            },
            ),
        ),
      ),
    ),
    );
  }
}