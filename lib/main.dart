import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:letsgyan/MainScreen.dart';
import 'package:letsgyan/style/theme.dart' as Theme;

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ));

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 1, length: 2);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                "https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Opacity(
              opacity: 0.90,
              child: Container(
                color: Theme.Colors.primaryDark,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 175.0,
                    margin: EdgeInsets.only(left: 25.0),
                    child: TabBar(
                      controller: _tabController,
                      indicatorColor: Theme.Colors.textColor,
                      tabs: <Widget>[
                        Container(
                          child: Tab(
                            text: "SIGN IN",
                          ),
                        ),
                        Container(
                          child: Tab(
                            text: "SIGN UP",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: <Widget>[_signInTab(context), _signupTab(context)],
                    ),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            )
          ],
        ));
  }

  Widget _signInTab(BuildContext context){
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 5.0),
              child: Text(
                "USERNAME",
                style: new TextStyle(color: Theme.Colors.textSecondary,fontSize: 12.0),
              ),
            ),
            Opacity(
              opacity: 0.30,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    //   hintText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Text(
                "PASSWORD",
                style: new TextStyle(color: Theme.Colors.textSecondary,fontSize: 12.0),
              ),
            ),
            Opacity(
              opacity: 0.30,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    //   hintText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeData(),
                    ),
                  );
                },
                padding: EdgeInsets.all(12),
                color: Theme.Colors.buttonColor,
                child: Text('SIGN IN', style: TextStyle(color: Theme.Colors.buttonText)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
              color: Theme.Colors.textSecondary,
              height: 1.0,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Forgot Password?",
                style: new TextStyle(color: Theme.Colors.textSecondary),
              ),
            )
          ],
        ),
      ),
    );
  }
  
  Widget _signupTab(BuildContext context){
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 5.0),
              child: Text(
                "USERNAME",
                style: new TextStyle(color: Theme.Colors.textSecondary,fontSize: 12.0),
              ),
            ),
            Opacity(
              opacity: 0.30,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    //   hintText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Text(
                "PASSWORD",
                style: new TextStyle(color: Theme.Colors.textSecondary,fontSize: 12.0),
              ),
            ),
            Opacity(
              opacity: 0.30,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    //   hintText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Text(
                "REPEAT PASSWORD",
                style: new TextStyle(color: Theme.Colors.textSecondary,fontSize: 12.0),
              ),
            ),
            Opacity(
              opacity: 0.30,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    //   hintText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Text(
                "EMAIL ADDRESS",
                style: new TextStyle(color: Theme.Colors.textSecondary,fontSize: 12.0),
              ),
            ),
            Opacity(
              opacity: 0.30,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    //   hintText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeData(),
                    ),
                  );
                },
                padding: EdgeInsets.all(12),
                color: Theme.Colors.buttonColor,
                child: Text('SIGN UP', style: TextStyle(color: Theme.Colors.buttonText)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0, bottom: 20.0),
              color: Theme.Colors.textSecondary,
              height: 1.0,
            ),
            Container(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: ()=> _tabController.animateTo(_tabController.index-1),
                child: Text(
                  "Already Member?",
                  style: new TextStyle(color: Theme.Colors.textSecondary),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}