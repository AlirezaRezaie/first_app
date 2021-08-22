import 'package:first_app/widgets/counter.dart';
import 'package:flutter/material.dart';
import 'widgets/question.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  var _questionNumber = 0;
  void nextQuestion(String ans){
    if (_questionNumber < 1){
    setState(() {
      _questionNumber +=1;
    });
    }
    print(ans);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["آیا کرونا دارید؟","آیا از جواب خود مطمعنید؟", ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "My first app",
            style: TextStyle(color: Colors.black54, fontFamily: "Roboto"),

          ),
          backgroundColor: Colors.red,
          elevation:100,
        ),
        body: Column(children: [
          Question(questions[_questionNumber],),
          ElevatedButton(child: Text("بله"),onPressed: () => nextQuestion("YES"),),
          ElevatedButton(child: Text("نه"),onPressed: () => nextQuestion("NO"),),
          ElevatedButton(child: Text("نمیدانم"),onPressed: () => nextQuestion("NONE"),),
          Divider(
            color:Colors.black,
          ),
          Counter(),
        ],)
      ),

    );
  }
}