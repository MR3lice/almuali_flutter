import 'package:almualiflutter/screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main_screen.dart';

 class SettingPage extends StatefulWidget {
  static final String path ="";

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final TextStyle blackText=TextStyle(
    color:Colors.black,
  );

  final  TextStyle  blackBoldText=TextStyle(
    color: Colors.black,
  );

  final TextStyle greyTExt=TextStyle(
    color:Colors.grey.shade400
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
    padding: const EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30.0,),
            Row(
              children: <Widget>[

                const SizedBox(width: 10.0),

              ],
            ),
            const SizedBox(height: 20.0),
            ListTile(
              title: Text("الخط",style: blackBoldText,),
              subtitle: Text("الكوفي",style: greyTExt,),
              trailing: Icon(Icons.keyboard_arrow_right,color: Colors.grey.shade400,),
              onTap: (){},
            ),
            ListTile(
              title: Text("اعدادت الصوت",style: blackBoldText,),
              subtitle: Text("صوت محيطي",style: greyTExt,),
              trailing: Icon(Icons.keyboard_arrow_right,color: Colors.grey.shade400,),
              onTap: (){},
            ),
            SwitchListTile(
              title: Text("النمط الليلي",style: blackBoldText,),
              subtitle: Text("تشغيل",style: greyTExt,),
              value: true,
              onChanged: (val){},
            ),
            SwitchListTile(
              title: Text("الاشعارات",style: blackBoldText,),
              subtitle: Text("تشغيل",style: greyTExt,),
              value: false,
              onChanged: (val){},
            ),
            ListTile(
              title: Text("الخروج من الحساب",style: blackBoldText,),
              onTap: (){},
            ),
          ],
        ),
    ),
        bottomNavigationBar:BottomAppBar(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(icon: Icon(Icons.home),
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                  }),
              IconButton(icon: Icon(Icons.search),
                  onPressed: null),
              IconButton(icon: Icon(Icons.settings),
                  onPressed:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>SettingPage())
                    );
                  }),
            ],
          ),
        )
    );
  }
}




//image: DecorationImage(
//image: CachedNetworkImageProvider(avatars[1]),
//fit: BoxFit.cover,
