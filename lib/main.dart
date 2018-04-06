import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

  // @override
  // ProjectWdState createState() => ProjectWdState();

}

// class ProjectWdState extends State<ProjectWd> with SingleTickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//   }

// }

class BackgroundWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      var bgAssetImage = new AssetImage('assets/bg.png');
      var name         = new NameWidget();
      var button       = new LoginButtonWidget();

      var background = new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            fit: BoxFit.cover,
            image: bgAssetImage,
         ),
        ),
      );

      var column = new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          new Expanded(child: name),
          new Padding(child: button, padding: new EdgeInsets.only(bottom: 50.0),)
      ],);
      return new Stack(
        children: <Widget>[background, column],
      );
    } 
}

class NameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var namesAssetImage = new AssetImage('assets/names.png');

    var name = new Container(
        child: new Center(
          child: new Image(
            image: namesAssetImage
          ,)
        ),
    );

    return name;
  }
}

class LoginButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = new Container(
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
    );
      
      return button;
  }
}

class HeartAnimationWidget extends StatefulWidget {
  @override
  HeartAnimationState    
}
