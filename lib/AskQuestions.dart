import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:letsgyan/style/theme.dart' as Theme;

class AskQuestions extends StatefulWidget {
  @override
  _AskQuestionsState createState() => _AskQuestionsState();
}

class _AskQuestionsState extends State<AskQuestions> {
  List _subjects = ["Mathematic", "Science", "Urdu", "Hindi", "English"];
  List _classes = [
    "Class I",
    "Class II",
    "Class III",
    "Class IV",
    "Class V",
    "Class VI",
    "Class VII",
    "Class VIII",
    "Class IX",
    "Class X",
    "Class XI",
    "Class XII"
  ];

  List<DropdownMenuItem<String>> _dropDownsubjects;
  String _currentSubject;

  List<DropdownMenuItem<String>> _dropDownclasses;
  String _currentClasses;

  @override
  void initState() {
    _dropDownsubjects = getDropDownMenuSubjects();
    _currentSubject = _dropDownsubjects[0].value;

    _dropDownclasses = getDropDownMenuClasses();
    _currentClasses = _dropDownclasses[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuSubjects() {
    List<DropdownMenuItem<String>> items = new List();
    for (String subject in _subjects) {
      items.add(new DropdownMenuItem(
          value: subject,
          child: Container(
            child: new Text(
              subject,
              style: new TextStyle(color: Theme.Colors.textSecondary),
            ),
          )),);
    }
    return items;
  }

  List<DropdownMenuItem<String>> getDropDownMenuClasses() {
    List<DropdownMenuItem<String>> items = new List();
    for (String clas in _classes) {
      items.add(new DropdownMenuItem(
          value: clas,
          child: new Text(
            clas,
            style: new TextStyle(color: Theme.Colors.textSecondary),
          )));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.Colors.primaryDark,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 80.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: Text(
                          "Subject",
                          style: new TextStyle(
                              fontSize: 17.0, color: Theme.Colors.textColor),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: DropdownButton(
                          value: _currentSubject,
                          items: _dropDownsubjects,
                          onChanged: changedDropDownSubjects,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: Text(
                          "Class",
                          style: new TextStyle(
                              fontSize: 17.0, color: Theme.Colors.textColor),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: DropdownButton(
                          value: _currentClasses,
                          items: _dropDownclasses,
                          onChanged: changedDropDownClasses,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.Colors.primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: TextFormField(
                      minLines: 5,
                      maxLines: 5,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Write your doubt here',
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          color: Theme.Colors.textSecondary,
                          height: 1.0,
                          width: MediaQuery.of(context).size.width / 3,
                        ),
                        Container(
                          margin: EdgeInsets.all(5.0),
                          width: 15.0,
                          child: Text(
                            "Or",
                            style: new TextStyle(color: Theme.Colors.textColor),
                          ),
                        ),
                        Container(
                          color: Theme.Colors.textSecondary,
                          height: 1.0,
                          width: MediaQuery.of(context).size.width / 3,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: RaisedButton(
                      color: Theme.Colors.buttonColor,
                      onPressed: (){},
                      child: Text(
                        "TAKE SNAPSHOT",
                        style: new TextStyle(color: Theme.Colors.textColor),
                      ),
                    ),
                  ),
                  Container(
                    color: Theme.Colors.primaryDark,
                    margin: EdgeInsets.only(top: 30.0),
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
                      child: Text(
                        "SUBMIT",
                        style: new TextStyle(color: Theme.Colors.buttonText),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void changedDropDownSubjects(String selectSubjects) {
    setState(() {
      _currentSubject = selectSubjects;
    });
  }

  void changedDropDownClasses(String selectClass) {
    setState(() {
      _currentClasses = selectClass;
    });
  }
}
