import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tsa_6/main.dart';
import 'package:tsa_6/minggu6.dart';

class drawerpage extends StatelessWidget {
  const drawerpage({super.key});

  static const appTitle = 'Contoh Drawer';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('Ini adalah demo dari Drawer Page!'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                              backgroundImage: AssetImage('image/123.jpg')),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Thoriq Lukman",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "thoriqlh123@gmail.com",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ]),
                )),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: const Text('Account'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.chat_rounded),
              title: const Text('Chats'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.clear();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => MyApp()),
                    ((route) => false));
              },
            ),
            ListTile(
              leading: Icon(Icons.pageview),
              title: const Text('PageView'),
              onTap: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.clear();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Home()),
                    ((route) => false));
              },
            ),
          ],
        ),
      ),
    );
  }
}
