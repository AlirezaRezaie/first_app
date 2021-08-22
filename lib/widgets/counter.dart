import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var count = 0;
  void handleCounter(){
    print("counter pressed!");
    setState(() {
      count +=1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RawMaterialButton(

            onPressed: handleCounter,
            elevation: 2.0,
            fillColor: Colors.green,
            child: Icon(
              Icons.add,
              size: 35.0,
            ),
            padding: EdgeInsets.all(15.0),
            shape: CircleBorder(),
          ),
          Text(count.toString(), style: TextStyle(fontSize: 40),),
          RawMaterialButton(

            onPressed: (){
              setState((){
                count -=1;
              });
            },
            elevation: 2.0,
            fillColor: Colors.red,
            child: Icon(
              Icons.remove,
              size: 35.0,
            ),
            padding: EdgeInsets.all(15.0),
            shape: CircleBorder(),
          ),
        ],
      );

  }
}
