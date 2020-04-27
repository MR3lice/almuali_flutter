// this free page for testing samples
import 'package:flutter/material.dart';
import 'package:almualiflutter/screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'settings.dart';

class JunkYard extends StatefulWidget {
  @override
  _JunkYardState createState() => _JunkYardState();
}

class _JunkYardState extends State<JunkYard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الملف الشخصي'),
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
//            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.8S4L0ieIehMsjfO52FNZpgHaHa%26pid%3DApi&f=1")
                        )
                    )),
                new Text("ابو خليل",
                    textScaleFactor: 1.5)
              ],
            ),
          ),
      ),
    );
  }
}
