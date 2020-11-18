import 'package:flutter/material.dart';

class Pertemuan8 extends StatefulWidget {
  Pertemuan8({Key key, this.title}) : super(key: key);

  final String title;

  @override
    State<StatefulWidget> createState() {
      return _Pertemuan8State();
    }
  }

  class _Pertemuan8State extends State<Pertemuan8> {
    String _name;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    Widget _buildName() {
      return TextFormField(
        decoration: InputDecoration(labelText: 'Nama Lengkap',
            hintText: "Contoh : Nathanael Dennis S",
            border: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5),
            )
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Nama Tidak Boleh Kosong';
          }

          return null;
        },
        onSaved: (String value) {
          _name = value;
        },
      );
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Form Pertemuan 8")),
        body: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildName(),
                SizedBox(height: 100),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    //print(_name);
                  },
                )
              ],
            ),
          ),
        ),
      );
    }
  }