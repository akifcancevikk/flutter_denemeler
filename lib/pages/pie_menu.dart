import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_denemeler/pages/flutter_tilt.dart';
import 'package:flutter_denemeler/pages/gauge_indicator.dart';
import 'package:flutter_denemeler/pages/info_popup.dart';
import 'package:flutter_denemeler/pages/responsive_grid_list_page.dart';
import 'package:flutter_denemeler/pages/siri_wave.dart';
import 'package:pie_menu/pie_menu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

extension ContextExtension on BuildContext {
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).removeCurrentSnackBar();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}

class PieMenuPage extends StatefulWidget {
  const PieMenuPage({super.key});

  @override
  State<PieMenuPage> createState() => _PieMenuPageState();
}

class _PieMenuPageState extends State<PieMenuPage> {
  var _navigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return PieCanvas(
      theme: const PieTheme(
        rightClickShowsMenu: true,
        tooltipTextStyle: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Pie Menu 🥧',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: IndexedStack(
          index: _navigationIndex,
          children: const [
            StylingPage(),
            ListViewPage(),
            AboutPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _navigationIndex,
          onTap: (index) => setState(() => _navigationIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.palette),
              label: 'Styling',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'ListView',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.circle_notifications_sharp),
              label: 'About',
            ),
          ],
        ),
      ),
    );
  }
}

class StylingPage extends StatelessWidget {
  const StylingPage({super.key});

  static const double spacing = 20;

  @override
  Widget build(BuildContext context) {
    return PieCanvas(
      theme: const PieTheme(
        delayDuration: Duration.zero,
        tooltipTextStyle: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
      ),
      child: Builder(
        builder: (context) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(spacing),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: PieMenu(
                            actions: [
                              PieAction(
                                tooltip: const Text('Flutter Tilt Page'),
                                onSelect: () {
                                  Navigator.push(context, CupertinoDialogRoute(builder: (context) => const FlutterTiltPage(), context: context));
                                },

                                /// Optical correction
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Icon(Icons.play_arrow),
                                ),
                              ),
                              PieAction(
                                tooltip: const Text('Siri Wave Page'),
                                onSelect: () {
                                  Navigator.push(context, CupertinoDialogRoute(builder: (context) => const SiriWavePage(), context: context));
                                },
                                child: const Icon(Icons.thumb_up)
                              ),
                              PieAction(
                                tooltip: const Text('Info Popup Page'),
                                onSelect: () {
                                  Navigator.push(context, CupertinoDialogRoute(builder: (context) => const InfoPopupPage(), context: context));
                                },
                                child: const Icon(Icons.share),
                              ),
                              PieAction(
                                tooltip: const Text('Gauge Indicator Page'),
                                onSelect: () {
                                  Navigator.push(context, CupertinoDialogRoute(builder: (context) => const GaugeIndicatorPage(), context: context));
                                },
                                child: const Icon(Icons.share),
                              ),
                              PieAction(
                                tooltip: const Text('Responsive Grid List Page'),
                                onSelect: () {
                                  Navigator.push(context, CupertinoDialogRoute(builder: (context) => const ResponsiveGridListPage(), context: context));
                                },
                                child: const Icon(Icons.share),
                              ),
                            ],
                            child: _buildCard(
                              color: Colors.orangeAccent,
                            ),
                          ),
                        ),
                        const SizedBox(height: spacing),
                        Expanded(
                          child: PieMenu(
                            theme: PieTheme.of(context).copyWith(
                              buttonTheme: const PieButtonTheme(
                                backgroundColor: Colors.deepOrange,
                                iconColor: Colors.white,
                              ),
                              buttonThemeHovered: const PieButtonTheme(
                                backgroundColor: Colors.orangeAccent,
                                iconColor: Colors.black,
                              ),
                              brightness: Brightness.dark,
                            ),
                            actions: [
                              PieAction.builder(
                                tooltip: const Text('1'),
                                onSelect: () => context.showSnackBar('1'),
                                builder: (hovered) {
                                  return _buildTextButton('1', hovered);
                                },
                              ),
                              PieAction.builder(
                                tooltip: const Text('2'),
                                onSelect: () => context.showSnackBar('2'),
                                builder: (hovered) {
                                  return _buildTextButton('2', hovered);
                                },
                              ),
                              PieAction.builder(
                                tooltip: const Text('3'),
                                onSelect: () => context.showSnackBar('3'),
                                builder: (hovered) {
                                  return _buildTextButton('3', hovered);
                                },
                              ),
                              PieAction.builder(
                                tooltip: const Text('4'),
                                onSelect: () =>
                                    context.showSnackBar('4'),
                                builder: (hovered) {
                                  return _buildTextButton('4', hovered);
                                },
                              ),
                            ],
                            child: _buildCard(
                              color: Colors.deepPurple,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: spacing),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: PieMenu(
                            theme: PieTheme.of(context).copyWith(
                              tooltipTextStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              overlayColor: Colors.teal.withOpacity(0.7),
                              pointerSize: 40,
                              pointerDecoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red.withOpacity(0.5),
                              ),
                              buttonTheme: const PieButtonTheme(
                                backgroundColor: Colors.black,
                                iconColor: Colors.white,
                              ),
                              buttonThemeHovered: const PieButtonTheme(
                                backgroundColor: Colors.white,
                                iconColor: Colors.black,
                              ),
                              buttonSize: 84,
                              leftClickShowsMenu: false,
                              rightClickShowsMenu: true,
                            ),
                            onPressedWithDevice: (kind) {
                              if (kind == PointerDeviceKind.mouse) {
                                context.showSnackBar(
                                  'Text',
                                );
                              }
                            },
                            actions: [
                              PieAction(
                                tooltip: const Text('Text'),
                                onSelect: () {
  
                                },
                                child: const Icon(Icons.open_in_browser),
                              ),
                              PieAction(
                                tooltip: const Text('<Text>'),
                                onSelect: () {

                                },

                                /// Custom background color
                                buttonTheme: PieButtonTheme(
                                  backgroundColor:
                                      Colors.black.withOpacity(0.7),
                                  iconColor: Colors.white,
                                ),
                                child: const Icon(Icons.palette),
                              ),
                              PieAction(
                                tooltip:
                                    const Text('Uzun Basın'),
                                buttonTheme: PieButtonTheme(
                                  backgroundColor:
                                      Colors.black.withOpacity(0.5),
                                  iconColor: Colors.white,
                                ),
                                onSelect: () {

                                },
                                child: const Icon(Icons.mouse_outlined)
                              ),
                            ],
                            child: _buildCard(
                              color: Colors.teal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCard({
    Color? color,
  }) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: Text('Sayfa Değiştir', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),)
      ),
    );
  }

  Widget _buildTextButton(String text, bool hovered) {
    return Text(
      text,
      style: TextStyle(
        color: hovered ? Colors.black : Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

//* list view example *//
class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  static const spacing = 20.0;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(
        top: spacing,
        bottom: spacing,
        left: MediaQuery.of(context).padding.left + spacing,
        right: MediaQuery.of(context).padding.right + spacing,
      ),
      physics: const BouncingScrollPhysics(),
      itemCount: 16,
      separatorBuilder: (context, index) => const SizedBox(height: spacing),
      itemBuilder: (context, index) {
        return SizedBox(
          height: 200,
          child: PieMenu(
            onPressed: () {
              context.showSnackBar(
                "#$index — Widget'a uzun basın",
              );
            },
            actions: [
              PieAction(
                tooltip: const Text('Beğen'),
                onSelect: () => context.showSnackBar('Beğen #$index'),
                child: const Icon(Icons.heart_broken),
              ),
              PieAction(
                tooltip: const Text('Yorum'),
                onSelect: () => context.showSnackBar('Yorum #$index'),
                child: const Icon(Icons.comment),
              ),
              PieAction(
                tooltip: const Text('Kaydet'),
                onSelect: () => context.showSnackBar('Kaydet #$index'),
                child: const Icon(Icons.bookmark),
              ),
              PieAction(
                tooltip: const Text('Paylaş'),
                onSelect: () => context.showSnackBar('Paylaş #$index'),
                child: const Icon(Icons.share),
              ),
            ],
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  '#$index',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 64,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

//* about the developer *//
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PieCanvas(
      theme: PieTheme(
        delayDuration: Duration.zero,
        tooltipTextStyle: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
        tooltipUseFittedBox: true,
        buttonTheme: const PieButtonTheme(
          backgroundColor: Colors.black,
          iconColor: Colors.white,
        ),
        buttonThemeHovered: PieButtonTheme(
          backgroundColor: Colors.lime[200],
          iconColor: Colors.black,
        ),
        overlayColor: Colors.blue[200]?.withOpacity(0.7),
        rightClickShowsMenu: true,
      ),
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(size: 100),
                  SizedBox(width: 16),
                  Text(
                    '🥧',
                    style: TextStyle(
                      fontSize: 100,
                      height: 0.8,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Center(
                child: PieMenu(
                  actions: [
                    PieAction(
                      tooltip: const Text('Text'),
                      onSelect: () {
                          },
                      child: const Icon(Icons.youtube_searched_for),
                    ),
                    PieAction(
                      tooltip: const Text('Text'),
                      onSelect: () {

                      },
                      child: const Icon(Icons.linked_camera),
                    ),
                    PieAction(
                      tooltip: const Text('Text'),
                      onSelect: () {
                      },
                      child: const FaIcon(FontAwesomeIcons.solidEnvelope),
                    ),
                    PieAction(
                      tooltip: const Text('Text'),
                      onSelect: () {

                      },
                      child: const FaIcon(FontAwesomeIcons.mugSaucer, size: 20),
                    ),
                  ],
                  child: FittedBox(
                    child: Container(
                      padding: const EdgeInsets.all(32),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      // child: const Column(
                      //   mainAxisSize: MainAxisSize.min,
                      //   children: [
                      //     Text(
                      //       'created by',
                      //       style: TextStyle(
                      //         color: Colors.white,
                      //         fontSize: 36,
                      //       ),
                      //     ),
                      //     Text(
                      //       'Raşit Ayaz',
                      //       style: TextStyle(
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.w800,
                      //         fontSize: 40,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}