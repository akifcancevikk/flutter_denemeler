// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';

class CardLoadingPage extends StatefulWidget {
  const CardLoadingPage({super.key});

  @override
  State<CardLoadingPage> createState() => _CardLoadingPageState();
}

class _CardLoadingPageState extends State<CardLoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Card Loading Page"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              CardLoading(
                                height: 30,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                width: 100,
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              CardLoading(
                                height: 100,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              CardLoading(
                                height: 30,
                                width: 200,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              CardLoading(
                                height: 30,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                width: 100,
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              CardLoading(
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: Image.asset('assets/progress.gif')),
                                  ),),
                                height: 100,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              CardLoading(
                                height: 30,
                                width: 200,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}