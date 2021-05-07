import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(
              Icons.person_outline,
              size: 120.0,
              color: Colors.green,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                icon: Icon(Icons.line_weight),
                hintText: 'entre com seu Peso',
                labelText: 'Peso *',
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                icon: Icon(Icons.height),
                hintText: 'entre com sua altura',
                labelText: 'Altura *',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                  },
                  child: Text(
                    "Calcular",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                  color: Colors.green,
                ),
              ),
            ),
            Text( "Info",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
            )
           ],
        ),
      ),
    );
  }
}
