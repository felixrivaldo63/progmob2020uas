import 'package:flutter/material.dart'; //bagian import

void main() => runApp(Pertemuan8()); //bagian main

const String _title = '72170102';

class Pertemuan8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //menghilangkan banner debug pada aplikasi
        title: _title,
        //judul untuk recent app
        home: Scaffold(
            backgroundColor: Color(0x34495eaa), //HEX Colors
            appBar: AppBar(
                leading: Icon(Icons.home),
                title: Text(_title), //judul untuk ditampilkan pada AppBar
                backgroundColor: Color(0x666666aa) //HEX Colors
            ),
            body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      decoration: new InputDecoration(
                        labelText: "Tes Input 1",
                        hintText: "Text yang akan diinput sbb",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    TextFormField(
                      decoration: new InputDecoration(
                        labelText: " Tes Inpur 2",
                        hintText: "Text yang akan diinput sbb",
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5)
                        )
                      ),
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        "Simpan",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ))
        )
    );
  }
}


