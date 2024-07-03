// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_denemeler/pages/awesome_snackbar_content_page.dart';
import 'package:flutter_denemeler/pages/buton_tabbar_page.dart';
import 'package:flutter_denemeler/pages/card_loading.dart';
import 'package:flutter_denemeler/pages/carousel_slider_page.dart';
import 'package:flutter_denemeler/pages/cart_demo_page.dart';
import 'package:flutter_denemeler/pages/country_picker.dart';
import 'package:flutter_denemeler/pages/date_picker.dart';
import 'package:flutter_denemeler/pages/design_test_page.dart';
import 'package:flutter_denemeler/pages/draggable_home.dart';
import 'package:flutter_denemeler/pages/draggable_home_demo_page.dart';
import 'package:flutter_denemeler/pages/draggable_page_deneme.dart';
import 'package:flutter_denemeler/pages/expandable_page.dart';
import 'package:flutter_denemeler/pages/expandable_page_view_page.dart';
import 'package:flutter_denemeler/pages/expansion_tile_card_page.dart';
import 'package:flutter_denemeler/pages/flip_card_page.dart';
import 'package:flutter_denemeler/pages/mesh_gradient.dart';
import 'package:flutter_denemeler/pages/metronome.dart';
import 'package:flutter_denemeler/pages/pie_menu.dart';
import 'package:flutter_denemeler/pages/flutter_expandable_fab_page.dart';
import 'package:flutter_denemeler/pages/flutter_fortune_wheel.dart';
import 'package:flutter_denemeler/pages/flutter_slider_drawer.dart';
import 'package:flutter_denemeler/pages/flutter_tilt.dart';
import 'package:flutter_denemeler/pages/flutter_webview_plugin_page.dart';
import 'package:flutter_denemeler/pages/gauge_indicator.dart';
import 'package:flutter_denemeler/pages/glassmorphism.dart';
import 'package:flutter_denemeler/pages/infinite_carousel_page.dart';
import 'package:flutter_denemeler/pages/info_popup.dart';
import 'package:flutter_denemeler/pages/intro_slider_page.dart';
import 'package:flutter_denemeler/pages/liquid_pull_to_refresh_page.dart';
import 'package:flutter_denemeler/pages/multi_dropdown_page.dart';
import 'package:flutter_denemeler/pages/phone_number_formatter.dart';
import 'package:flutter_denemeler/pages/quickalert.dart';
import 'package:flutter_denemeler/pages/responsive_grid.dart';
import 'package:flutter_denemeler/pages/responsive_grid_list_page.dart';
import 'package:flutter_denemeler/pages/responsive_test_page.dart';
import 'package:flutter_denemeler/pages/salomon_bottom_bar_page.dart';
import 'package:flutter_denemeler/pages/shake_page.dart';
import 'package:flutter_denemeler/pages/shomodal_bottom_sheet_message.dart';
import 'package:flutter_denemeler/pages/siri_wave.dart';
import 'package:flutter_denemeler/pages/sliding_up_page.dart';
import 'package:flutter_denemeler/pages/smoot_page_indicator_page.dart';
import 'package:flutter_denemeler/pages/squiggly_slider.dart';
import 'package:flutter_denemeler/pages/sticky_headers_page.dart';
import 'package:flutter_denemeler/pages/swiper_page.dart';
import 'package:flutter_denemeler/pages/syncfusion_flutter_sliders.dart';
import 'package:flutter_denemeler/pages/text_scroll_page.dart';
import 'package:flutter_denemeler/pages/visual_effect.dart';
import 'package:flutter_denemeler/pages/web_page_demo_page.dart';
import 'package:glassmorphism/glassmorphism.dart';

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
    return Stack(
      children: [
        Image.network(
            "https://images.pexels.com/photos/8273387/pexels-photo-8273387.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: Text('Route Page'), backgroundColor: Colors.transparent,),
          body: Center(
            child: GlassmorphicContainer(
             width: queryData.size.width*0.95,
              height: queryData.size.height*0.92,
             borderRadius: 20,
             blur: 7,
             alignment: Alignment.bottomCenter,
             border: 1,
             linearGradient: LinearGradient(
                 begin: Alignment.topLeft,
                 end: Alignment.bottomRight,
                 colors: [
                   Color(0xFFffffff).withOpacity(0.1),
                   Color(0xFFFFFFFF).withOpacity(0.05),
                 ],
                 stops: [
                   0.1,
                   1,
                 ]),
             borderGradient: LinearGradient(
               begin: Alignment.topLeft,
               end: Alignment.bottomRight,
               colors: [
                 Color(0xFFffffff).withOpacity(0.5),
                 Color((0xFFFFFFFF)).withOpacity(0.5),
               ],
             ),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,          
                  children: [
                    Button(title: 'Country Picker Page', onTap: CountryPickerPage()),
                    Button(title: 'Date Picker page', onTap: DatePickerPage()),
                    Button(title: 'Phone number Formatter Page', onTap: PhoneNumberFormatterPage()),  
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
                    Button(title: 'Draggable Home Page', onTap: DraggableHomePage()),
                    Button(title: 'Card Loading Page', onTap: CardLoadingPage()),
                    Button(title: 'Draggable Page Demo', onTap: DraggablePageDemo()),
                    Button(title: 'Show Modal Bottom Sheet Message Page', onTap: ShowModalBottomSheetMessagePage()),
                    Button(title: 'My Responsive Widget Page', onTap: MyResponsiveWidget()),
                    Button(title: 'Responsive Grid List Page', onTap: ResponsiveGridListPage()),
                    Button(title: 'Gauge Indicator Page', onTap: GaugeIndicatorPage()),
                    Button(title: 'Info Popup Page', onTap: InfoPopupPage()),
                    Button(title: 'Siri Wave Page', onTap: SiriWavePage()),
                    Button(title: 'Flutter Tilt Page', onTap: FlutterTiltPage()),
                    Button(title: 'Pie Menu Page', onTap: PieMenuPage()),
                    Button(title: 'Syncfusion Flutter Sliders Page', onTap: SyncfusionFlutterSlidersPage()),
                    Button(title: 'Mesh Gradient Page', onTap: MeshGradientPage()),
                    Button(title: 'Metronome Page', onTap: MetronomePage()),
                    Button(title: 'Squiggly Slider Page', onTap: SquigglySliderPage()),
                    Button(title: 'Visual Effect Page', onTap: VisualEffectPage()),
                    Button(title: 'Draggable Home Page Demo Page', onTap: DraggableHomePageDemoPage()),
                    Button(title: 'Web Page Demo Page', onTap: WebPageDemoPage()),
                    Button(title: 'Design Test Page', onTap: DesignTestPage()),
                  ],
                ),
              ),
             ),
            ),
          ),
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  String title;
  var onTap;
  Button({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.white.withOpacity(0.2)),
                elevation:  WidgetStatePropertyAll(0) ,
              ),
              onPressed: () async {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => onTap,));
            }, child: Text(title, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 161, 11, 24)),)),
          ),
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}



























































// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_denemeler/pages/awesome_snackbar_content_page.dart';
// import 'package:flutter_denemeler/pages/buton_tabbar_page.dart';
// import 'package:flutter_denemeler/pages/card_loading.dart';
// import 'package:flutter_denemeler/pages/carousel_slider_page.dart';
// import 'package:flutter_denemeler/pages/cart_demo_page.dart';
// import 'package:flutter_denemeler/pages/country_picker.dart';
// import 'package:flutter_denemeler/pages/date_picker.dart';
// import 'package:flutter_denemeler/pages/draggable_home.dart';
// import 'package:flutter_denemeler/pages/draggable_page_deneme.dart';
// import 'package:flutter_denemeler/pages/expandable_page.dart';
// import 'package:flutter_denemeler/pages/expandable_page_view_page.dart';
// import 'package:flutter_denemeler/pages/expansion_tile_card_page.dart';
// import 'package:flutter_denemeler/pages/flip_card_page.dart';
// import 'package:flutter_denemeler/pages/mesh_gradient.dart';
// import 'package:flutter_denemeler/pages/metronome.dart';
// import 'package:flutter_denemeler/pages/pie_menu.dart';
// import 'package:flutter_denemeler/pages/flutter_expandable_fab_page.dart';
// import 'package:flutter_denemeler/pages/flutter_fortune_wheel.dart';
// import 'package:flutter_denemeler/pages/flutter_slider_drawer.dart';
// import 'package:flutter_denemeler/pages/flutter_tilt.dart';
// import 'package:flutter_denemeler/pages/flutter_webview_plugin_page.dart';
// import 'package:flutter_denemeler/pages/gauge_indicator.dart';
// import 'package:flutter_denemeler/pages/glassmorphism.dart';
// import 'package:flutter_denemeler/pages/infinite_carousel_page.dart';
// import 'package:flutter_denemeler/pages/info_popup.dart';
// import 'package:flutter_denemeler/pages/intro_slider_page.dart';
// import 'package:flutter_denemeler/pages/liquid_pull_to_refresh_page.dart';
// import 'package:flutter_denemeler/pages/multi_dropdown_page.dart';
// import 'package:flutter_denemeler/pages/phone_number_formatter.dart';
// import 'package:flutter_denemeler/pages/quickalert.dart';
// import 'package:flutter_denemeler/pages/responsive_grid.dart';
// import 'package:flutter_denemeler/pages/responsive_grid_list_page.dart';
// import 'package:flutter_denemeler/pages/responsive_test_page.dart';
// import 'package:flutter_denemeler/pages/salomon_bottom_bar_page.dart';
// import 'package:flutter_denemeler/pages/shake_page.dart';
// import 'package:flutter_denemeler/pages/shomodal_bottom_sheet_message.dart';
// import 'package:flutter_denemeler/pages/siri_wave.dart';
// import 'package:flutter_denemeler/pages/sliding_up_page.dart';
// import 'package:flutter_denemeler/pages/smoot_page_indicator_page.dart';
// import 'package:flutter_denemeler/pages/squiggly_slider.dart';
// import 'package:flutter_denemeler/pages/sticky_headers_page.dart';
// import 'package:flutter_denemeler/pages/swiper_page.dart';
// import 'package:flutter_denemeler/pages/syncfusion_flutter_sliders.dart';
// import 'package:flutter_denemeler/pages/text_scroll_page.dart';
// import 'package:flutter_denemeler/pages/visual_effect.dart';

// class RoutePage extends StatefulWidget {
//   const RoutePage({super.key});

//   @override
//   State<RoutePage> createState() => _RoutePageState();
// }

// class _RoutePageState extends State<RoutePage> {
//   @override
//   Widget build(BuildContext context) {
//     MediaQueryData queryData = MediaQuery.of(context);

//     List<Button> buttons = [
//       Button(title: 'Country Picker Page', onTap: const CountryPickerPage()),
//       Button(title: 'Date Picker page', onTap: const DatePickerPage()),
//       Button(title: 'Phone number Formatter Page', onTap: const PhoneNumberFormatterPage()),
//       Button(title: 'Carousel Slider Page', onTap: const CarouselSliderPage()),
//       Button(title: 'Photo View Page', onTap: const SmootPageIndicatorPage()),
//       Button(title: 'Expandable Page', onTap: const ExpandablePage()),
//       Button(title: 'Swiper Page', onTap: const SwiperPage()),
//       Button(title: 'Sliding Up Page', onTap: const SlidingUpPage()),
//       Button(title: 'Sticky Headers Page', onTap: const StickyHeadersPage()),
//       Button(title: 'Button Tabbar Page', onTap: const ButtonTabbarPage()),
//       Button(title: 'Flip Card Page', onTap: const FlipCardPage()),
//       Button(title: 'Expandable Page View Page', onTap: const ExpandablePageViewPage()),
//       Button(title: 'Awesome Snackbar Content Page', onTap: const AwesomeSnackbarContentPage()),
//       Button(title: 'Quick Alert Page', onTap: const QuickAlertPage()),
//       Button(title: 'Multi Dropdown Page', onTap: const MultiDropdownPage()),
//       Button(title: 'Intro Slider Page', onTap: const IntroSliderPage()),
//       Button(title: 'Salomon Bottom Bar Page', onTap: const SalomonBottomBarPage()),
//       Button(title: 'Flutter WebView Plugin Page', onTap: const FlutterWebViewPluginPage()),
//       Button(title: 'Shake Page', onTap: const ShakePage()),
//       Button(title: 'Expansion Tile Card Page', onTap: const ExpansionTileCardPage()),
//       Button(title: 'Liquid Pull To Refresh Page', onTap: const LiquidPullToRefreshPage()),
//       Button(title: 'Infinite Carousel Page', onTap: const InfiniteCarouselPage()),
//       Button(title: 'Text Scroll Page', onTap: const TextScrollPage()),
//       Button(title: 'Flutter Expandable Fab Page', onTap: const FirstPage()),
//       Button(title: 'Cart Demo Page', onTap: const CartDemoPage()),
//       Button(title: 'Responsive Grid Page', onTap: const ResponsiveGridPage()),
//       Button(title: 'Flutter Fortune Wheel Page', onTap: const FlutterFortuneWheelPage()),
//       Button(title: 'Flutter Slider Drawer Page', onTap: const FlutterSliderDrawerPage()),
//       Button(title: 'Glassmorphism Page', onTap: const GlassmorphismPage()),
//       Button(title: 'Draggable Home Page', onTap: const DraggableHomePage()),
//       Button(title: 'Card Loading Page', onTap: const CardLoadingPage()),
//       Button(title: 'Draggable Page Demo', onTap: const DraggablePageDemo()),
//       Button(title: 'Show Modal Bottom Sheet Message Page', onTap: const ShowModalBottomSheetMessagePage()),
//       Button(title: 'My Responsive Widget Page', onTap: const MyResponsiveWidget()),
//       Button(title: 'Responsive Grid List Page', onTap: const ResponsiveGridListPage()),
//       Button(title: 'Gauge Indicator Page', onTap: const GaugeIndicatorPage()),
//       Button(title: 'Info Popup Page', onTap: const InfoPopupPage()),
//       Button(title: 'Siri Wave Page', onTap: const SiriWavePage()),
//       Button(title: 'Flutter Tilt Page', onTap: const FlutterTiltPage()),
//       Button(title: 'Pie Menu Page', onTap: const PieMenuPage()),
//       Button(title: 'Syncfusion Flutter Sliders Page', onTap: const SyncfusionFlutterSlidersPage()),
//       Button(title: 'Mesh Gradient Page', onTap: const MeshGradientPage()),
//       Button(title: 'Metronome Page', onTap: const MetronomePage()),
//       Button(title: 'Squiggly Slider Page', onTap: const SquigglySliderPage()),
//       Button(title: 'Visual Effect Page', onTap: const VisualEffectPage()),
//     ];

//     Butonları başlık uzunluğuna göre büyükten küçüğe sıralıyoruz
//     buttons.sort((a, b) => b.title.length.compareTo(a.title.length));

//     Buton sayısını belirleme
//     if (kDebugMode) {
//       print('Button count: ${buttons.length}');
//     }

//     return Scaffold(
//       backgroundColor: Colors.blue.shade200,
//       appBar: AppBar(
//         title: const Text('Route Page'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Container(
//           width: queryData.size.width * 0.9,
//           height: queryData.size.height * 0.9,
//           decoration: BoxDecoration(
//             color: Colors.blue.shade300,
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: buttons.map((button) {
//                 return Column(
//                   children: [
//                     ElevatedButton(
//                       onPressed: () async {
//                         Navigator.push(
//                           context,
//                           CupertinoPageRoute(builder: (context) => button.onTap),
//                         );
//                       },
//                       child: Text(
//                         button.title,
//                         style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                   ],
//                 );
//               }).toList(),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Button {
//   String title;
//   Widget onTap;
//   Button({
//     required this.title,
//     required this.onTap,
//   });
// }

// void main() {
//   runApp(const MaterialApp(
//     home: RoutePage(),
//   ));
// }
