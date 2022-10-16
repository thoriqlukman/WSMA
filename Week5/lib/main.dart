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
      debugShowCheckedModeBanner: false,
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


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Home(),
//     );
//   }
// }

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   final formKey = GlobalKey<FormState>(); //key for form
//   String name = "";
//   @override
//   Widget build(BuildContext context) {
//     final double height = MediaQuery.of(context).size.height;
//     final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//     return Scaffold(
//         key: _scaffoldKey,
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//         ),
//         backgroundColor: Color(0xFFffffff),
//         body: Container(
//           padding: const EdgeInsets.only(left: 40, right: 40),
//           child: Form(
//             key: formKey, //key for form
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: height * 0.04),
//                 Text(
//                   "Here to Get",
//                   style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
//                 ),
//                 Text(
//                   "Welcomed !",
//                   style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
//                 ),
//                 SizedBox(
//                   height: height * 0.05,
//                 ),
//                 TextFormField(
//                     decoration: InputDecoration(labelText: "Enter your Name"),
//                     validator: (value) {
//                       if (value!.isEmpty ||
//                           !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
//                         return "Enter Correct Name";
//                       }
//                     }),
//                 SizedBox(
//                   height: height * 0.05,
//                 ),
//                 TextFormField(
//                     decoration: InputDecoration(labelText: "Enter your Number"),
//                     validator: (value) {
//                       if (value!.isEmpty ||
//                           !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
//                         return "Enter Correct Name";
//                       }
//                     }),
//                 SizedBox(
//                   height: height * 0.05,
//                 ),
//                 TextFormField(
//                     decoration:
//                         InputDecoration(labelText: "Enter your Password"),
//                     validator: (value) {
//                       if (value!.isEmpty ||
//                           !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
//                         return "Enter Correct Name";
//                       }
//                     })
//               ],
//             ),
//           ),
//         ));
//   }
// }
