import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Login Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            alignment: Alignment.center,
            color: Colors.blue.shade200,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 300),
                const Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                      fontFamily: 'Proxima Nova',
                    )
                ),
                SizedBox(
                  width: 400,
                  child: Column (
                      children: const <Widget>[
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter your Username',
                              prefixIcon: Icon(
                                Icons.account_circle_outlined,
                              )
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
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
                    onPressed: null,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.red.shade500),
                      elevation: MaterialStateProperty.all(25.0),
                    ),
                    child: const Text('Login')),
              ],
            )
        )
    );
  }
}
