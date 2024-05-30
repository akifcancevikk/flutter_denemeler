// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_denemeler/pages/carousel_slider_page.dart';
import 'package:flutter_denemeler/pages/country_picker.dart';
import 'package:flutter_denemeler/pages/date_picker.dart';
import 'package:flutter_denemeler/pages/expandable_page.dart';
import 'package:flutter_denemeler/pages/phone_number_formatter.dart';
import 'package:flutter_denemeler/pages/sliding_up_page.dart';
import 'package:flutter_denemeler/pages/smoot_page_indicator_page.dart';
import 'package:flutter_denemeler/pages/sticky_headers_page.dart';
import 'package:flutter_denemeler/pages/swiper_page.dart';
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
          width: queryData.size.width*0.7,
          height: queryData.size.height*0.7,
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
