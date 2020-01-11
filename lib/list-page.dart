import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Map"),
      ),
        body: new Checkbox(value: false, onChanged: (bool value){
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new ListPage()));
        }),
    );
  }

}

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("List Page"),
      ),
      body: new Container(
        color: Colors.grey,
        padding: EdgeInsets.all(20.0),
        child: Table(
          border: TableBorder.all(color: Colors.black),
          children: [
            TableRow(children: [
              Text('Маршутка 1'),
              Text('Від вул.1'),
              Text('До вул.2')
            ]),
            TableRow(children: [
              Text('Маршутка 2'),
              Text('Від вул.2'),
              Text('До вул.4')
            ]),
            TableRow(children: [
              Text('Маршутка 3'),
              Text('Від вул.2'),
              Text('До вул.3')
            ]),
            TableRow(children: [
              Text('Маршутка 4'),
              Text('Від вул.1'),
              Text('До вул.4')
            ]),
            TableRow(children: [
              Text('Маршутка 5'),
              Text('Від вул.5'),
              Text('До вул.2')
            ])
          ],
        ),
      )
    );
  }

}
