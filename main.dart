import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Elida Putri (6SIA4)'),
        ),
        body: ElidaApp(),
      ),
    );
  }
}

class ElidaApp extends StatefulWidget {
  _ElidaAppState createState() => _ElidaAppState();
}

class _ElidaAppState extends State<ElidaApp> {
  final txtnama = TextEditingController();
  String _selected;
  String hasil;
  onProses() {
    setState(() {
      hasil = "${txtnama.text} alamat $_selected";
    });
  }

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          TextField(
            controller: txtnama,
            decoration: new InputDecoration(
              labelText: "alamat",
            ),
          ),
          DropdownButton(
              hint: Text("Pilihan alamat"),
              value: _selected,
              items: ['bandung', 'kalimantan', 'medan']
                  .map((choice) {
                return DropdownMenuItem(
                  child: Text(choice),
                  value: choice,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selected = value;
                });
              }),
          RaisedButton(
            child: Text('Proses'),
            onPressed: onProses,
          ),
          Text('$hasil')
        ]));
  }
}
