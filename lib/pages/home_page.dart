import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   _HomePageState createState() => _HomePageState();
// }

// class

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return RegisterDemo();
  }
}

class LoginDemo extends StatelessWidget {
  const LoginDemo({super.key});
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);
  final _sizeTextWhite = const TextStyle(fontSize: 20.0, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Email"),
                  keyboardType: TextInputType.emailAddress,
                  style: _sizeTextBlack,
                ),
                width: 400.0,
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                  obscureText: true,
                  style: _sizeTextBlack,
                ),
                width: 400.0,
                padding: EdgeInsets.only(top: 10.0),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const HomePage();
                        },
                      ),
                    );
                  },
                  color: Color.fromARGB(255, 12, 227, 173),
                  height: 50.0,
                  minWidth: 150.0,
                  child: Text(
                    "LOGIN",
                    style: _sizeTextWhite,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 20),
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  child: const Text('Регистрация'),
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RegisterDemo()))
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterDemo extends StatelessWidget {
  const RegisterDemo({super.key});

  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);
  final _sizeTextWhite = const TextStyle(fontSize: 20.0, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Email"),
                  keyboardType: TextInputType.emailAddress,
                  style: _sizeTextBlack,
                ),
                width: 400.0,
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Password1"),
                  obscureText: true,
                  style: _sizeTextBlack,
                ),
                width: 400.0,
                padding: EdgeInsets.only(top: 10.0),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Password2"),
                  obscureText: true,
                  style: _sizeTextBlack,
                ),
                width: 400.0,
                padding: EdgeInsets.only(top: 10.0),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Phone Number"),
                  obscureText: false,
                  style: _sizeTextBlack,
                ),
                width: 400.0,
                padding: EdgeInsets.only(top: 10.0),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const LoginDemo();
                        },
                      ),
                    );
                  },
                  color: Color.fromARGB(255, 0, 255, 251),
                  height: 50.0,
                  minWidth: 150.0,
                  child: Text(
                    "Register",
                    style: _sizeTextWhite,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
