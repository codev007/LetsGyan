import 'package:flutter/material.dart';
import 'package:letsgyan/AskQuestions.dart';
import 'package:letsgyan/RechargeAccount.dart';
import 'package:letsgyan/style/theme.dart' as Theme;

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Theme.Colors.primaryDark,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    "Welcome, Rajnikant",
                    style: new TextStyle(fontSize: 20.0,color: Theme.Colors.textColor),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text(
                    "You have 6 doubts left",
                    style: new TextStyle(fontSize: 15.0,color: Theme.Colors.textSecondary),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80.0),
                  child: RaisedButton(
                    color: Theme.Colors.buttonColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AskQuestions(),
                        ),
                      );
                    },
                    child: Text("ASK YOUR QUESTION",style: new TextStyle(color: Theme.Colors.buttonText),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
