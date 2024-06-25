// ignore_for_file: prefer_const_constructors

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class ExpansionTileCardPage extends StatefulWidget {
  const ExpansionTileCardPage({super.key});

  @override
  State<ExpansionTileCardPage> createState() => _ExpansionTileCardPageState();
}

class _ExpansionTileCardPageState extends State<ExpansionTileCardPage> {
   final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Expansion Tile Card Page'),),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ExpansionTileCard(
              leading: Icon(Icons.attractions_sharp),
              title: const Text('Karot Makinesi'),
              subtitle: const Text('RDX6830'),
              children: <Widget>[
                const Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text(
                      "2800 Watt süper güçlü motoru sayesinde birçok zorlu delme işini kolaylıkla halleder. 2 Manuel hız ayarı. Delmeyi kolaylaştırmak için su desteği. Taban alüminyum alaşımından yapılmıştır, çelik kolona 45°’ye kadar açı verilebilir. Tekerlek sistemi ile kolay taşıma.",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 16),
                    ),
                  ),
                ),
                TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  hintText: '(xxx) xxx xx xx',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ExpansionTileCard(
              leading: Icon(Icons.unfold_less_outlined),
              title: const Text('Avuç Taşlama Makinesi'),
              subtitle: const Text('RDX103'),
              children: <Widget>[
                const Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text(
                      "600 Watt güçlü motor ile kolay kesme ve taşlama Kolay disk değişimi için M8 mil kilidi Titreşim azaltıcı sap Operatör konforu için yan tutamak, aletin her iki tarafına da monte edilebilir.",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}