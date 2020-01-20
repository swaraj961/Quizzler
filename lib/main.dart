import 'package:flutter/material.dart';
import 'package:quizzler/quizbrain.dart';

void main() => runApp(new Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scorekeeper = [];
  void checkanswer (bool userpickedanswer) {
     bool correctanswer = brainquiz.quesbank[questionnumber].quesanswer;
     setState(() {
       
        
     });
                 if( userpickedanswer== correctanswer) {
                  scorekeeper.add(Icon(Icons.check,color:Colors.green));}
                  else {
                  scorekeeper.add(Icon(Icons.close,color:Colors.red));}
              }
              

  }

Brainquiz brainquiz = Brainquiz();
List <bool> answer =[
  false,
  true,
  true,
  true,
];



  int questionnumber= 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
               brainquiz.quesbank[questionnumber].questiontext,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {

                checkanswer(true);
               /* bool correctanswer = brainquiz.quesbank[questionnumber].quesanswer;
                 if(correctanswer== true) {
                  print("you got correct answer ") ;}
                  else {
                  print("you got incorrect answer");
              }
                setState(() {
                  questionnumber = questionnumber+1;
                });
                */
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkanswer(true);
                /*bool correctanswer= brainquiz.quesbank[questionnumber].quesanswer;
                if(correctanswer== false) {
                  print("you got incorrect answer") ;}
                  else {
                  print("you got correct answer");
              }
                setState(() {
                   questionnumber = questionnumber+1;
                  
                });
                //The user picked false.
                */
              },
            ),
          ),
        ),
        Row(
          children: scorekeeper,
        ),
      ],
    );
  }
}

/*

*/
