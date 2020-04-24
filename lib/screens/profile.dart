import 'package:flutter/material.dart';
import 'package:almualiflutter/screens/profile.dart';
import 'package:flutter/cupertino.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextStyle blackText = TextStyle(
    color: Colors.white,
  );

  final TextStyle blackBoldText = TextStyle(
    color: Colors.white,
  );

  final TextStyle greyTExt = TextStyle(color: Colors.grey.shade400);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
//      mainAxisAlignment: MainAxisAlignment.center,
//      crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "اسم المستحم",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(
                    "متعلم",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            ListTile(
              title: Text(
                "الخط",
                style: blackBoldText,
              ),
              subtitle: Text(
                "الكوفي",
                style: greyTExt,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.grey.shade400,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
