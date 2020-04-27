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
    );
  }
}
