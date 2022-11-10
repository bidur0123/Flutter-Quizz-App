import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: const EdgeInsets.all(0),
        children:  [
        const  DrawerHeader (
            padding: EdgeInsets.all(0.0),
            decoration: BoxDecoration(
              color: Color(0xff6a2ea3),
            ),
            child: Center(
              child: Text(
                  'Quizz App',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontStyle: FontStyle.italic

                ),
              ),
            )
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text(' About Us'),
            onTap: (){

            },
          ),
          ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text(' Contact Us '),
            onTap: (){

            },
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text(' Privacy and Policy  '),
            onTap: (){

            },
          ),
          ListTile(
            leading: Icon(Icons.pin_end),
            title: Text(' Terms and Condition  '),
            onTap: (){

            },
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(45.0, 200.0, 40.0, 20.0),
              child: Text (
                'Made By Bidur Gupta..',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Mulish',
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
