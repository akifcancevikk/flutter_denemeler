import 'package:flutter/material.dart';

class ScrollToTopPage extends StatefulWidget {
  const ScrollToTopPage({super.key});

  @override
  State<ScrollToTopPage> createState() => _ScrollToTopPageState();
}

class _ScrollToTopPageState extends State<ScrollToTopPage> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToTop() {
    _scrollController.animateTo(
      _scrollController.position.minScrollExtent,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scroll To Top Page'),),
      body: Stack(
        children: <Widget>[
          Container(
            height: 300,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(
              'Üst Alan',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.5,
            minChildSize: 0.0, // Minimum boyut 0.0 olarak ayarlandı
            maxChildSize: 1.0,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                color: Colors.white,
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text('Item $index'),
                    );
                  },
                ),
              );
            },
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: _scrollToTop,
              child: Icon(Icons.arrow_upward),
            ),
          ),
        ],
      ),
    );
  }
}