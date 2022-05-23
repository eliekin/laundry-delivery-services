import 'package:flutter/material.dart';

class ReceiptScreen extends StatefulWidget {
  ReceiptScreen({Key? key}) : super(key: key);

  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Receipt',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0.0,
        // actions: [
        //   Icon(
        //     Icons.notifications,
        //     color: Colors.white,
        //   )
        // ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text('After paying the customer will be issued a receipt genereted by a third-party'),
        ),
      ),
    );
  }
}
