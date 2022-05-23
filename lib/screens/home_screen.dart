import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pressing/data.dart';
import 'package:pressing/screens/support.dart';
import 'package:pressing/widgets/services.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: Colors.indigo,
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bienvenu,',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Neonderthaw'),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Comment pouvons-nous vous aider?',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.place,
                  color: Colors.red,
                ),
                title: Text(
                  'Goma, derriere round-point Bralima',
                  style: TextStyle(color: Colors.pink),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: MediaQuery.of(context).size.height / 5,
            child: CarouselSlider.builder(
              itemCount: imageUrl.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = imageUrl[index];
                return buildImage(urlImage, index);
              },
              options:
                  CarouselOptions(height: 400, autoPlay: true, reverse: true),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.only(left: 12),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: localImage.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5.5,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(SupportScreen.routeName);
                        },
                        child: Image.asset(localImage[index])),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Stack(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'images/gift.jpg',
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.5),
                  colorBlendMode: BlendMode.modulate,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                // decoration: BoxDecoration(color:Colors.pink.withOpacity(0.09),
                // ),
                child: Row(
                  children: [
                    Image.asset('images/discount.jpg'),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'EVERY',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontFamily: 'AlfaSlabOne'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'FRIDAY',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black,
                              fontFamily: 'SourceSansPro'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

Widget buildImage(String urlImage, int index) => Container(
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
        width: 300,
      ),
    );
