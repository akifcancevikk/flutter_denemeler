// ignore_for_file: prefer_const_constructors, prefer_final_fields, use_super_parameters
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class FlutterSliderDrawerPage extends StatefulWidget {
  const FlutterSliderDrawerPage({super.key});

  @override
  State<FlutterSliderDrawerPage> createState() => _FlutterSliderDrawerPageState();
}

class _FlutterSliderDrawerPageState extends State<FlutterSliderDrawerPage> {
  final GlobalKey<SliderDrawerState> _sliderDrawerKey =
      GlobalKey<SliderDrawerState>();
  late String title;

  @override
  void initState() {
    title = "Home";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'BalsamiqSans'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SliderDrawer(
            appBar: SliderAppBar(
                appBarColor: Colors.white,
                title: Text(title,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w700))),
            key: _sliderDrawerKey,
            sliderOpenSize: 179,
            slider: _SliderView(
              onItemClick: (title) {
                showDialog(context: context, builder: (context) {
                  return AlertDialog(
                    title: Text(title),
                  );
                },);
                setState(() {
                  this.title = title;
                });
              },
            ),
            child: _AuthorList()),
      ),
    );
  }
}


class _SliderView extends StatelessWidget {
  final Function(String)? onItemClick;

  const _SliderView({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: Image.network(
                      'data:image/jpeg;base64,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')
                  .image,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Ryan',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...[
            Menu(Icons.home, 'Home'),
            Menu(Icons.add_circle, 'Add Post'),
            Menu(Icons.notifications_active, 'Notification'),
            Menu(Icons.favorite, 'Likes'),
            Menu(Icons.settings, 'Setting'),
            Menu(Icons.arrow_back_ios, 'LogOut')
          ]
              .map((menu) => _SliderMenuItem(
                  title: menu.title,
                  iconData: menu.iconData,
                  onTap: onItemClick)),
        ],
      ),
    );
  }
}

class _SliderMenuItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function(String)? onTap;

  const _SliderMenuItem(
      {Key? key,
      required this.title,
      required this.iconData,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title,
            style: const TextStyle(
                color: Colors.black, fontFamily: 'BalsamiqSans_Regular')),
        leading: Icon(iconData, color: Colors.black),
        onTap: () => onTap?.call(title));
  }
}

class _AuthorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Quotes> quotesList = [];
    quotesList.add(Quotes(Colors.amber, 'Ryan Reynolds',
        'I don’t expect success. I prepare for it.'));
    quotesList.add(Quotes(Colors.orange, 'Ryan Reynolds',
        'Laughing can serve you in dark moments and even help you crawl your way back out.'));
    quotesList.add(Quotes(Colors.deepOrange, 'Ryan Reynolds',
        'When you have expectations, you are setting yourself up for disappointment.'));
    quotesList.add(Quotes(Colors.red, 'Ryan Reynolds',
        'Are you stalking me? Because that would be super.'));
    quotesList.add(Quotes(Colors.purple, 'Ryan Reynolds',
        'I have daddy issues. So I keep tissues on me at all times.'));
    quotesList
        .add(Quotes(Colors.green, 'Ryan Reynolds', 'The ‘friend zone’ is like the penalty box of dating, only you can never get out. Once a girl decides you’re her ‘friend,’ it’s game over. You’ve become a complete non-sexual entity in her eyes, like her brother, or a lamp.'));

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          itemBuilder: (builder, index) {
            return LimitedBox(
              child: Container(
                decoration: BoxDecoration(
                    color: quotesList[index].color,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                      child: Text(
                        quotesList[index].author,
                        style: const TextStyle(
                            fontFamily: 'BalsamiqSans_Blod',
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        quotesList[index].quote,
                        style: const TextStyle(
                            fontFamily: 'BalsamiqSans_Regular',
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (builder, index) {
            return SizedBox(height: 10,);
          },
          itemCount: quotesList.length),
    );
  }
}

class Quotes {
  final MaterialColor color;
  final String author;
  final String quote;

  Quotes(this.color, this.author, this.quote);
}

class Menu {
  final IconData iconData;
  final String title;

  Menu(this.iconData, this.title);
}