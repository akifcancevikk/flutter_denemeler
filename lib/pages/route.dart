// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_denemeler/pages/awesome_snackbar_content_page.dart';
import 'package:flutter_denemeler/pages/buton_tabbar_page.dart';
import 'package:flutter_denemeler/pages/carousel_slider_page.dart';
import 'package:flutter_denemeler/pages/cart_demo_page.dart';
import 'package:flutter_denemeler/pages/country_picker.dart';
import 'package:flutter_denemeler/pages/date_picker.dart';
import 'package:flutter_denemeler/pages/expandable_page.dart';
import 'package:flutter_denemeler/pages/expandable_page_view_page.dart';
import 'package:flutter_denemeler/pages/expansion_tile_card_page.dart';
import 'package:flutter_denemeler/pages/flip_card_page.dart';
import 'package:flutter_denemeler/pages/flutter_expandable_fab_page.dart';
import 'package:flutter_denemeler/pages/flutter_fortune_wheel.dart';
import 'package:flutter_denemeler/pages/flutter_slider_drawer.dart';
import 'package:flutter_denemeler/pages/flutter_webview_plugin_page.dart';
import 'package:flutter_denemeler/pages/glassmorphism.dart';
import 'package:flutter_denemeler/pages/infinite_carousel_page.dart';
import 'package:flutter_denemeler/pages/intro_slider_page.dart';
import 'package:flutter_denemeler/pages/liquid_pull_to_refresh_page.dart';
import 'package:flutter_denemeler/pages/multi_dropdown_page.dart';
import 'package:flutter_denemeler/pages/phone_number_formatter.dart';
import 'package:flutter_denemeler/pages/quickalert.dart';
import 'package:flutter_denemeler/pages/responsive_grid.dart';
import 'package:flutter_denemeler/pages/salomon_bottom_bar_page.dart';
import 'package:flutter_denemeler/pages/shake_page.dart';
import 'package:flutter_denemeler/pages/sliding_up_page.dart';
import 'package:flutter_denemeler/pages/smoot_page_indicator_page.dart';
import 'package:flutter_denemeler/pages/sticky_headers_page.dart';
import 'package:flutter_denemeler/pages/swiper_page.dart';
import 'package:flutter_denemeler/pages/text_scroll_page.dart';
import 'package:flutter_denemeler/pages/web_view.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({super.key});

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
    
  @override
  Widget build(BuildContext context) {
   MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(title: Text('Route Page'), centerTitle: true,),
      body: Center(
        child: Container(
          width: queryData.size.width*0.9,
          height: queryData.size.height*0.9,
          decoration: BoxDecoration(
          color: Colors.blue.shade300,
          borderRadius: BorderRadius.circular(20)    
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,          
              children: [
                Button(title: 'Country Picker Page', onTap: CountryPickerPage()),
                Button(title: 'Date Picker page', onTap: DatePickerPage()),
                Button(title: 'Phone number Formatter Page', onTap: PhoneNumberFormatterPage()),  
                Button(title: 'Web View Page', onTap: WebViewPage()),
                Button(title: 'Carousel Slider Page', onTap: CarouselSliderPage()),
                Button(title: 'Photo View Page', onTap: SmootPageIndicatorPage()),
                Button(title: 'Expandable Page', onTap: ExpandablePage()),
                Button(title: 'Swiper Page', onTap: SwiperPage()),
                Button(title: 'Sliding Up Page', onTap: SlidingUpPage()),
                Button(title: 'Sticky Headers Page', onTap: StickyHeadersPage()),
                Button(title: 'Button Tabbar Page', onTap: ButtonTabbarPage()),
                Button(title: 'Flip Card Page', onTap: FlipCardPage()),
                Button(title: 'Expandable Page View Page', onTap: ExpandablePageViewPage()),
                Button(title: 'Awesome Snackbar Content Page', onTap: AwesomeSnackbarContentPage()),
                Button(title: 'Quick Alert Page', onTap: QuickAlertPage()),
                Button(title: 'Multi Dropdown Page', onTap: MultiDropdownPage()),
                Button(title: 'Intro Slider Page', onTap: IntroSliderPage()),
                Button(title: 'Salomon Bottom Bar Page', onTap: SalomonBottomBarPage()),
                Button(title: 'Flutter WebView Plugin Page', onTap: FlutterWebViewPluginPage()),
                Button(title: 'Shake Page', onTap: ShakePage()),
                Button(title: 'Expansion Tile Card Page', onTap: ExpansionTileCardPage()),
                Button(title: 'Liquid Pull To Refresh Page', onTap: LiquidPullToRefreshPage()),
                Button(title: 'Infinite Carousel Page', onTap: InfiniteCarouselPage()),
                Button(title: 'Text Scroll Page', onTap: TextScrollPage()),
                Button(title: 'Flutter Expandable Fab Page', onTap: FirstPage()),
                Button(title: 'Cart Demo Page', onTap: CartDemoPage()),
                Button(title: 'Responsive Grid Page', onTap: ResponsiveGridPage()),
                Button(title: 'Flutter Fortune Wheel Page', onTap: FlutterFortuneWheelPage()),
                Button(title: 'Flutter Slider Drawer Page', onTap: FlutterSliderDrawerPage()),
                Button(title: 'Glassmorphism Page', onTap: GlassmorphismPage()),
               // Button(title: 'Reorderable Grid View Page', onTap: ReorderableGridViewPage()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  String title;
  var onTap;
  Button({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: () async {
          Navigator.push(context, CupertinoPageRoute(builder: (context) => onTap,));
        }, child: Text(title, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
        SizedBox(height: 10,)
      ],
    );
  }
}
