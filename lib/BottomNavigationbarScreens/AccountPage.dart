import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:letsgyan/style/theme.dart' as Theme;
import '../RechargeAccount.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key key}) : super(key: key);
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Theme.Colors.primaryDark,
          child: Center(
              child: Column(children: <Widget>[
      Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 50.0, left: 10.0, right: 10.0),
                    child: new Card(
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          color: Theme.Colors.primaryColor,
                          height: 100.0,
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 70.0,
                                width: 70.0,
                                margin: EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://cdn0.iconfinder.com/data/icons/avatar-batch-1/512/profile_icon-11-512.png"),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      "Deepak Patidar",
                                      style: new TextStyle(fontSize: 20.0,color: Theme.Colors.textColor),
                                    ),
                                    margin:
                                        EdgeInsets.only(left: 0.0, right: 10.0),
                                  ),
                                  Container(
                                      margin:
                                          EdgeInsets.only(left: 0.0, right: 10.0),
                                      child: Text("Account balance : 0.0 Rs",style: new TextStyle(color: Theme.Colors.textSecondary),)),
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: 0.0, right: 10.0, top: 5.0),
                                      child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    RechargeAccount(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Recharge now",
                                            style: new TextStyle(
                                                color: Theme.Colors.textSecondary,
                                                fontSize: 17.0),
                                          )
                                      )
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))
    ])),
        ));
  }
}
