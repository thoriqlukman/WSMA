import 'package:flutter/material.dart';
import 'drawerpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Login';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoggedin = false;
  String name = '';

  @override
  void initState() {
    super.initState();
    autoLogin();
  }

  void autoLogin() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final String? userID = pref.getString('Username');

    if (userID != null && userID == 'admin') {
      setState(() {
        isLoggedin == true;
        name = userID;
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => drawerpage(),
            ));
        return;
      });
    }
  }

  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Selamat Datang',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      String uname = usernameController.text;
                      String pass = passwordController.text;
                      if (uname == "admin" && pass == "admin") {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Selamat datang"),
                        ));
                        addStringtoSF(uname);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => drawerpage()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Username atau Password salah"),
                        ));
                      }
                    })),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}

addStringtoSF(String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('Username', value);
}
