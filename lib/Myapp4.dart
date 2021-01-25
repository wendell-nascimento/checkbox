import 'package:flutter/material.dart';

class MyApp4 extends StatefulWidget {
  @override
  _MyApp4State createState() => _MyApp4State();
}

class _MyApp4State extends State<MyApp4> {
  bool _startCheck1 = false;
  bool _startCheck2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CheckboxListTile(
                 value: _startCheck1,
                title: Text("Comida Brasileira"),
                subtitle: Text("A melhor do mundo"),
                activeColor: Colors.deepOrange,
                secondary: Icon(Icons.account_box_outlined, size: 40, color: Colors.blueAccent,),
                onChanged: (verify) {
              setState(() {
                _startCheck1 = verify;
              });
            }),
            CheckboxListTile(
                 value: _startCheck2,
                title: Text("Comida Mexicana"),
                subtitle: Text("A segunda melhor do mundo"),
                activeColor: Colors.deepOrange,
                secondary: Icon(Icons.account_box_outlined, size: 40, color: Colors.blueAccent,),
                onChanged: (verify) {
              setState(() {
                _startCheck2 = verify;
              });
            }),
            RaisedButton(onPressed: (){
              print(_startCheck1);
              print(_startCheck2);
            },
              child: Text("Salvar", style: TextStyle(color: Colors.white, fontSize: 15),),
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
