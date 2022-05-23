import 'package:flutter/material.dart';
//import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);
  static const routeName = '/support';

  @override
  Widget build(BuildContext context) {
//    _callNumber() async {
//      const number = '0709366928'; //set the number here
//      bool? res = await FlutterPhoneDirectCaller.callNumber(number);
//    }

  const phoneNumber = '0709366928';

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent.withOpacity(0.1),
          title: Text(
            'Support',
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0.0,
        ),
        body: Stack(children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.7,
                child: Image.asset('images/Delivery.jpg',fit: BoxFit.cover),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2.7,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: Center(
                  child: Column(children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Column(
                        children: [
                          Text(
                              'Pour toute vos preoccupations contacter nous au'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(                   
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () async {
                              launch('tel://$phoneNumber');
                            },
                            icon: Icon(Icons.call),
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          RaisedButton(
                              onPressed: () async {
                                launch('tel://$phoneNumber');
                              },
                              child: Text('0999366928'))
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ]));
  }
}
