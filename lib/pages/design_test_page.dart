// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_denemeler/methods/height_and_width.dart';
import 'package:glassmorphism/glassmorphism.dart';

class DesignTestPage extends StatefulWidget {
  const DesignTestPage({super.key});

  @override
  State<DesignTestPage> createState() => _DesignTestPageState();
}

class _DesignTestPageState extends State<DesignTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(flex: 14,
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: SizedBox(
                            width: ScreenHelper.screenWidthPercentage(context, 99),
                            child: Image.network('https://images.pexels.com/photos/1670187/pexels-photo-1670187.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', fit: BoxFit.cover,))),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    child: IconButton(
                                      onPressed: () => Navigator.pop(context),
                                      icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.white),
                                      ),
                                    ),
                                  CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    child: Icon(Icons.bookmark_add_outlined, color: Colors.white,),
                                    ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 50),
                              child: GlassmorphicContainer(
                                width: ScreenHelper.screenHeightPercentage(context, 35),
                                height: 100,
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
                                child: Center(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 3 ,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("Andes Mountain", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Icon(Icons.map, color: Colors.white,),
                                                SizedBox(width: 7,),
                                                Text("South America", style: TextStyle(color: Colors.white),),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                     ),
                                      Expanded(
                                        flex: 1 ,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("Price", style: TextStyle(color: Colors.white, fontSize: 15),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Text("230", style: TextStyle(color: Colors.white, fontSize: 25)),
                                          ),
                                        ],
                                      )
                                     ),
                                    ],
                                  ),
                                )
                                                        ),
                            ),
                         ],
                        ),   
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
              flex: 2,
               child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text('Overview', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, top: 5),
                      child: Text('Details', style: TextStyle(fontSize: 16),),
                    ),  
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Text("     The Andes , Andes Mountains or Andean Mountain Range (Spanish: Cordillera de los Andes; Quechua: Anti) are the longest continental mountain range in the world, forming a continuous highland along the western edge of South America. The range is 8,900 km (5,530 mi) long and 200 to 700 km (124 to 435 mi) wide (widest between 18°S and 20°S latitude) and has an average height of about 4,000 m (13,123 ft). The Andes extend from South to North through seven South American countries: Argentina, Chile, Bolivia, Peru, Ecuador, Colombia, and Venezuela. \n\n     Along their length, the Andes are split into several ranges, separated by intermediate depressions. The Andes are the location of several high plateaus—some of which host major cities such as Quito, Bogotá, Cali, Arequipa, Medellín, Bucaramanga, Sucre, Mérida, El Alto, and La Paz. The Altiplano Plateau is the world's second-highest after the Tibetan Plateau. These ranges are in turn grouped into three major divisions based on climate: the Tropical Andes, the Dry Andes, and the Wet Andes. \n\n     The Andes are the highest mountain range outside Asia. The range's highest peak, Argentina's Aconcagua, rises to an elevation of about 6,961 m (22,838 ft) above sea level. The peak of Chimborazo in the Ecuadorian Andes is farther from the Earth's center than any other location on the Earth's surface, due to the equatorial bulge resulting from the Earth's rotation. The world's highest volcanoes are in the Andes, including Ojos del Salado on the Chile-Argentina border, which rises to 6,893 m (22,615 ft). \n\n     The Andes are also part of the American Cordillera, a chain of mountain ranges (cordillera) that consists of an almost-continuous sequence of mountain ranges that form the western of the Americas and Antarctica."),
                ),
                           
                  ],
                ),
               ),
             )
              
            ],
          ),
        ),
          Expanded(flex: 2,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: 65,
                    width: ScreenHelper.screenWidthPercentage(context, 90),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.black),
                      ),
                      onPressed: () {}, 
                      child: Text('CLICK', style: TextStyle(fontSize: 17),)),
                  ),
                ),
              ),
            ],
          )
         ),
        ],
      )
    );
  }
}












