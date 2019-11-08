import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:letsgyan/style/theme.dart' as Theme;

class BlogPage extends StatefulWidget {
  const BlogPage({Key key}) : super(key: key);

  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.Colors.primaryDark,
        child: Center(
          child: Text("Blog Page",style: new TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
