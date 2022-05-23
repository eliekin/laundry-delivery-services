import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                    elevation: 5.5,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/img/washing-machine.png',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Netoyage & Repassage',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )
                          ]),
                    )),
                Card(
                    elevation: 5.5,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/img/iron.png'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Repassage',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold))
                          ]),
                    )),
                Card(
                    elevation: 5.5,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/img/t-shirt.png',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Netoyage a sec',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold))
                          ]),
                    ))

              ]),
        ),
    );
  }
}

