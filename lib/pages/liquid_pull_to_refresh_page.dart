import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class LiquidPullToRefreshPage extends StatefulWidget {
  const LiquidPullToRefreshPage({super.key});

  @override
  State<LiquidPullToRefreshPage> createState() => _LiquidPullToRefreshPageState();
}

class _LiquidPullToRefreshPageState extends State<LiquidPullToRefreshPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<LiquidPullToRefreshState> _refreshIndicatorKey =
      GlobalKey<LiquidPullToRefreshState>();

  static int refreshNum = 10; // number that changes when refreshed
  Stream<int> counterStream =
      Stream<int>.periodic(const Duration(seconds: 3), (x) => refreshNum);

  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  static final List<String> _items = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N'
  ];

  Future<void> _handleRefresh() {
    final Completer<void> completer = Completer<void>();
    Timer(const Duration(seconds: 3), () {
      completer.complete();
    });
    setState(() {
      refreshNum = Random().nextInt(100);
    });
    return completer.future.then<void>((_) {
      ScaffoldMessenger.of(_scaffoldKey.currentState!.context).showSnackBar(
        SnackBar(
          content: const Text('Refresh complete'),
          action: SnackBarAction(
            label: 'RETRY',
            onPressed: () {
              _refreshIndicatorKey.currentState!.show();
            },
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Liquid Pull To Refresh Page'),),
      body: LiquidPullToRefresh(
        backgroundColor: Colors.red,
        color: Colors.amber,
        key: _refreshIndicatorKey,
        onRefresh: _handleRefresh,
        showChildOpacityTransition: false,
        child: StreamBuilder<int>(
          stream: counterStream,
          builder: (context, snapshot) {
            return ListView.builder(
              padding: kMaterialListPadding,
              itemCount: _items.length,
              controller: _scrollController,
              itemBuilder: (BuildContext context, int index) {
                final String item = _items[index];
                return ListTile(
                  isThreeLine: true,
                  leading: CircleAvatar(child: Text(item)),
                  title: Text('This item represents $item.'),
                  subtitle: Text(
                      'Even more additional list item information appears on line three. ${snapshot.data}'),
                );
              },
            );
          },
        ),
      ),
    );
  }
}