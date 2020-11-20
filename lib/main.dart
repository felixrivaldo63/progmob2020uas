import 'package:flutter/material.dart'; //bagian import

void main() => runApp(MyApp()); //bagian main

const String _title = '72170102';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //menghilangkan banner debug pada aplikasi
        title: _title, //judul untuk recent app
        home: Scaffold(
          backgroundColor: Color(0x34495eaa), //HEX Colors
          appBar: AppBar(
              leading: Icon(Icons.home),
              title: Text(_title), //judul untuk ditampilkan pada AppBar
              backgroundColor: Color(0x666666aa) //HEX Colors
          ),
          body: Center(
              child: Text('Hello World!', style: TextStyle(fontSize: 35, color: Colors.black))
          ),
        )
    );
  }
}