import 'package:almualiflutter/screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'settings.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({ this.title}) ;


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                    Icons.person
                ),
              )
          ),
        ],
        title: Text('الموالي',),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
//              hello card starts here
            Text(
            'تابع المشاهدة',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal:20.0,vertical:10.0),
              height:200,
              width:300,
              child:ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                  child: Stack(
                    children: <Widget>[
                        Container(
                          height: 200,
                          width:400,
                          child: Image.network('https://cdn.pixabay.com/photo/2015/01/28/23/35/landscape-615429_960_720.jpg',
                          fit:BoxFit.cover,),
                        ),
                      ],
                  ),),
            ),
              SizedBox(
                height: 15,
              ),
              Text(
                'حصريا',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                ),
              ),
//              listview must be set in container to work proberly
              Container(
                height: 125,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,

                  reverse: true,
                  children: <Widget>[
                    CourseCard('2','images/landscape.jpg'),
                    CourseCard('1','images/landscape.jpg'),
//                    CourseCard('1'),
//                    CourseCard('1'),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),
              Text(
                'الجديد',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                ),
              ),
//              listview must be set in container to work proberly
              Container(
                height: 125,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,

                  reverse: true,
                  children: <Widget>[
                    CourseCard('2','images/landscape.jpg'),
                    CourseCard('1','images/landscape.jpg'),
//                    CourseCard('1'),
//                    CourseCard('1'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar:BottomAppBar(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home),
                onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                }),
            IconButton(icon: Icon(Icons.search),
                onPressed:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>ProfilePage())
                  );
                }),
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

class CourseCard extends StatelessWidget {
  String name;
  String image;

  CourseCard(this.name,this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      height: 100,
      width: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Stack(
         children: <Widget>[
           Container(
               height:200, width:200 ,child: Image.asset(image , fit: BoxFit.cover,)),
           Center(child: Text(name,)),
         ],
        ),
      ),
    );
  }
}

//BottomNavigationBar(
//items: const <BottomNavigationBarItem>[
//BottomNavigationBarItem(
//icon: Icon(Icons.home),
//title: Text('Home'),
//),
//BottomNavigationBarItem(
//icon: Icon(Icons.business),
//title: Text('Business'),
//),
//BottomNavigationBarItem(
//icon: Icon(Icons.school),
//title: Text('School'),
//),
//],
//currentIndex: selectedIndex,
//selectedItemColor: Colors.lightBlueAccent,
//onTap: (int index){
//setState(() {
//selectedIndex = index;
//});
//
//},
//),



//           container

//Container(
//decoration: BoxDecoration(
//color: Colors.grey,
//borderRadius: BorderRadius.all(Radius.circular(18)),
//),
//height: 200,
//child: Center(
//child: Text(
//'Hello'
//),
//),
//),


//ClipRRect(
////borderRadius: BorderRadius.circular(10.0),
////child: Image.network('https://cdn.pixabay.com/photo/2015/01/28/23/35/landscape-615429_960_720.jpg',
////fit:BoxFit.cover,)),