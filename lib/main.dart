import 'package:flutter/material.dart';

void main() => runApp(new ProjectWd());

class ProjectWd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "ProjectWd",
      home: new Scaffold(
        appBar: null,
        body: new BackgroundWidget(),
      ),
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      var assetsImage = new AssetImage('assets/bg.png');
      var background = new Container(
        child: new Image(
          image: assetsImage
          ),
      );

      var button = new LoginButtonWidget();
    
       return new Stack(
        children: <Widget>[background, button],
      );
    } 
}

class LoginButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Container(
        width: 249.0,
        height: 46.0,
        decoration: new BoxDecoration(
          color: const Color.fromRGBO(128, 41, 41, 78.0),
          borderRadius: new BorderRadius.all(const Radius.circular(50.0))
        ),
        child: new FlatButton(
          child: new Text("Login", style: new TextStyle(fontSize: 24.0, color: Colors.white)),
          onPressed: null,
        ),
      ));
  }
}
