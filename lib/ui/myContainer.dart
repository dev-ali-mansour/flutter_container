import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        new Expanded(
            child: new Material(
          color: Colors.indigo,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Text(
                    'First Item',
                    textDirection: TextDirection.ltr,
                  ),
                  new Text(
                    'Second Item',
                    textDirection: TextDirection.ltr,
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Icon(Icons.accessibility),
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          new Text(
                            'First Sub Item',
                            textDirection: TextDirection.ltr,
                          ),
                          new Text(
                            'Second Sub Item',
                            textDirection: TextDirection.ltr,
                          ),
                          new Text(
                            'Third Sub Item',
                            textDirection: TextDirection.ltr,
                          ),
                        ],
                      ),
                      new Icon(Icons.account_balance),
                    ],
                  ),
                  new Text(
                    'Third Item',
                    textDirection: TextDirection.ltr,
                  ),
                  new Icon(Icons.home),
                ],
              ),
            ],
          ),
        )),
        new Expanded(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Expanded(
                  child: new Material(
                color: Colors.red,
                child: new Expanded(
                    child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Text('Welcome',
                        textDirection: TextDirection.ltr,
                        style: new TextStyle(
                            color: Colors.amber,
                            fontSize: 24,
                            fontWeight: FontWeight.bold))
                  ],
                )),
              )),
              new Expanded(
                  child: new Material(
                color: Colors.white,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Text('To',
                        textDirection: TextDirection.ltr,
                        style: new TextStyle(
                            color: Colors.amber,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    new IconButton(
                        icon: new Icon(Icons.account_balance_outlined),
                        onPressed: () => _onHomePressed())
                  ],
                ),
              )),
              new Expanded(
                  child: new Material(
                color: Colors.black,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Text(
                      'Egypt',
                      textDirection: TextDirection.ltr,
                      style: new TextStyle(
                          color: Colors.amber,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ))
            ],
          ),
        )
      ]),
    );
  }

  _onHomePressed() {
    debugPrint('Egypt is our big home');
  }
}
