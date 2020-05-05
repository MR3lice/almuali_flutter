// this free page for testing samples
import 'package:flutter/material.dart';
import 'package:almualiflutter/screens/settings.dart';
import 'package:flutter/cupertino.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الملف الشخصي'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: new Column(
//            mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
                width: 80.0,
                height: 80.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.8S4L0ieIehMsjfO52FNZpgHaHa%26pid%3DApi&f=1")))),
            const SizedBox(height: 10),
            Text("ابو خليل", textScaleFactor: 1.5),
            const SizedBox(height: 18),
            profileLable("المعلومات الشخصية"),
            const SizedBox(height: 18),
            profileLable("تفاصيل الخدمة"),
            const SizedBox(height: 18),
            profileLable("خصوصية الحساب"),
            const SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}

class profileLable extends StatelessWidget {
  String name;

  profileLable(this.name);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment:CrossAxisAlignment.end,
      children: <Widget>[
        Icon(
          Icons.keyboard_arrow_left,
          color: Colors.grey.shade400,
        ),
        Text(name,
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
