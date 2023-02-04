import 'package:flutter/material.dart';
import 'package:test_app/chessapp.dart';
import 'package:test_app/main.dart';
import 'chessapp.dart';
import 'chesspage.dart';

void main() {
  runApp(const Signup());
}

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup Page',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Signup Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final nameController = TextEditingController();
  final dobController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Signup Page'),
        ),
        body: Container(
            alignment: Alignment.center,
            color: Colors.blue.shade200,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 300),
                const Text(
                    'Signup',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                      fontFamily: 'Proxima Nova',
                    )
                ),
                SizedBox(
                    width: 400,
                    child: Column (
                        children: [
                          const SizedBox(height: 20),
                          TextField(
                            controller: nameController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter your full name',
                                prefixIcon: Icon(
                                  Icons.person,
                                )
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            controller: dobController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter your date of birth',
                                prefixIcon: Icon(
                                  Icons.calendar_month_rounded,
                                )
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            controller: usernameController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Create your Username',
                                prefixIcon: Icon(
                                  Icons.account_circle_outlined,
                                )
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Create a strong password',
                                prefixIcon: Icon(
                                  Icons.lock,
                                )
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Repeat the password',
                                prefixIcon: Icon(
                                  Icons.lock,
                                )
                            ),
                          ),
                        ]
                    ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: ()
                    {
                      final data = <String, dynamic>{
                        "name" : nameController.text,
                        "dob"     : dobController.text,
                        "username"     : usernameController.text,
                        "password"  : passwordController.text,
                      };
                      db.collection("users").add(data).then((value) => debugPrint(value.id + value.path));

                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => ChessApp()),
                      );
                    },
                    style: ButtonStyle(
                        // backgroundColor: MaterialStateProperty.all<Color>(
                        //     Colors.green.shade500),
                    elevation: MaterialStateProperty.all(25.0),
                    ),
                    child: const Text('Sign me up')),
              ],
            )
        )
    );
  }
}
