// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class SmootPageIndicatorPage extends StatefulWidget {
  const SmootPageIndicatorPage({super.key});

  @override
  State<SmootPageIndicatorPage> createState() => _SmootPageIndicatorPageState();
}

class _SmootPageIndicatorPageState extends State<SmootPageIndicatorPage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final pages = List.generate(
        20,
        (index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: SizedBox(
                height: 280,
                child: Center(
                    child: Text(
                  "Page $index",
                  style: TextStyle(color: Colors.indigo),
                )),
              ),
            ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Smoot Page Indicator Page'),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 16),
              SizedBox(
                height: 240,
                child: PageView.builder(
                  controller: controller,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              Text(
                'Worm',
                style: TextStyle(color: Colors.black54),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: const WormEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  type: WormType.thinUnderground,
                ),
              ),             
              
              Text(
                'Jumping Dot',
                style: TextStyle(color: Colors.black54),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: JumpingDotEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  jumpScale: .7,
                  verticalOffset: 15,
                ),
              ),
              
              
              Text(
                'Scrolling Dots',
                style: TextStyle(color: Colors.black54),
              ),
              SmoothPageIndicator(
                  controller: controller,
                  count: pages.length,
                  effect: ScrollingDotsEffect
                  (
                    activeStrokeWidth: 2.6,
                    activeDotScale: 1.3,
                    maxVisibleDots: 15,
                    radius: 8,
                    spacing: 10,
                    dotHeight: 12,
                    dotWidth: 12,
                  )
                  ),
              
              
              Text(
                'Customizable Effect',
                style: TextStyle(color: Colors.black54),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: CustomizableEffect(
                  activeDotDecoration: DotDecoration(
                    width: 32,
                    height: 12,
                    color: Colors.indigo,
                    rotationAngle: 180,
                    verticalOffset: -10,
                    borderRadius: BorderRadius.circular(24),
                    // dotBorder: DotBorder(
                    //   padding: 2,
                    //   width: 2,
                    //   color: Colors.indigo,
                    // ),
                  ),
                  dotDecoration: DotDecoration(
                    width: 24,
                    height: 12,
                    color: Colors.grey,
                    // dotBorder: DotBorder(
                    //   padding: 2,
                    //   width: 2,
                    //   color: Colors.grey,
                    // ),
                    // borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(2),
                    //     topRight: Radius.circular(16),
                    //     bottomLeft: Radius.circular(16),
                    //     bottomRight: Radius.circular(2)),
                    borderRadius: BorderRadius.circular(16),
                    verticalOffset: 0,
                  ),
                  spacing: 6.0,
                  // activeColorOverride: (i) => colors[i],
                  inActiveColorOverride: (i) => colors[i],
                ),
              ),
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ),

    );
  }
}

const colors = [
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
];