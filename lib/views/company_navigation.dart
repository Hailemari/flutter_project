// ignore_for_file: unnecessary_const
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/views/Company_message.dart';
import 'package:mynotes/views/company_profile.dart';
import 'package:mynotes/views/postform.dart';
import 'package:mynotes/views/user_profile.dart';

import 'companies_list.dart';
import 'Usermessage.dart';

class CompanyNavigation extends StatefulWidget {
  const CompanyNavigation({Key? key}) : super(key: key);

  @override
  State<CompanyNavigation> createState() => _CompanyNavigationState();
}

class _CompanyNavigationState extends State<CompanyNavigation> {
  int currentIndex = 0;

  get onPressed => null;

  void _incrementCounter() {
    setState(() {});
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> _children = [
    const CompanyProfile(),
    const CompanyMessage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          backgroundColor: Colors.teal,
          items: <Widget>[
            Icon(Icons.list, size: 20),
            Icon(Icons.compare_arrows, size: 20),
          ],
          onTap: onTabTapped),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4.0,
        icon: const Icon(Icons.add),
        label: const Text('Add a Post'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PostForm()),
          );
        },
      ),
    );
  }
}
