import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Card(
                  margin: EdgeInsets.fromLTRB(8.0, 8.0, 4.0, 8.0),
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.blueGrey[600],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.music_note,
                          color: Colors.white,
                          size: 60.0,
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'MALE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Card(
                  margin: EdgeInsets.fromLTRB(4.0, 8.0, 8.0, 8.0),
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.blueGrey[600],
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.play_for_work,
                          color: Colors.white,
                          size: 60.0,
                        ),
                        SizedBox(height: 10,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

        ),

        Expanded(
          flex: 2,
          child: Card(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            color: Colors.blueGrey[600],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  '180cm',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  color: Colors.pink,
                ),
              ],
            ),
          ),
        ),

        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Card(
                  color: Colors.blueGrey[600],
                  margin: EdgeInsets.fromLTRB(8.0, 8.0, 4.0, 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        '60kg',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.blueGrey[400],
                            child: Icon(Icons.remove, color: Colors.white,size: 20,),
                          ),
                          SizedBox(width: 5.0,),
                          FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.blueGrey[400],
                            child: Icon(Icons.add,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Card(
                  margin: EdgeInsets.fromLTRB(4.0, 8.0, 8.0, 8.0),
                  color: Colors.blueGrey[600],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        '25',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.blueGrey[400],
                            child: Icon(Icons.remove, color: Colors.white,size: 20,),
                          ),
                          SizedBox(width: 5.0,),
                          FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.blueGrey[400],
                            child: Icon(Icons.add,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(top: 8),
            child: RaisedButton(
              onPressed: (){},
              color: Colors.pinkAccent,
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Text('CALCULATE', style: TextStyle(
                color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold,
              ),),
            ),
          ),
        ),
      ],
    );
  }
}
