import 'package:flutter/material.dart';
import 'package:flutter_application_1/ManageHomePage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool obs = true;

  void onTxtSecure() {
    setState(() {
      obs = !obs;
    });
  }

  Widget ShowText() {
    return Text(
      "Cafe Never Walk Alone",
      style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.green,
          fontFamily: 'Sharp'),
    );
  }

  Widget txtUser() {
    return SizedBox(
      width: 350,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          labelText: 'User name',
          prefixIcon: Icon(
            Icons.person,
            size: 35,
            color: Colors.blue,
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }

  Widget txtPassword() {
    return SizedBox(
      width: 350,
      child: TextField(
        obscureText: obs,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          labelText: 'Password',
          prefixIcon: Icon(
            Icons.lock,
            size: 32,
            color: Colors.blue,
          ),
          suffixIcon: IconButton(
              onPressed: () {
                onTxtSecure();
              },
              icon: obs ? Icon(Icons.visibility_off) : Icon(Icons.visibility)),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }

  Widget btnLogin() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.23,
      height: MediaQuery.of(context).size.height * 0.07,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        onPressed: () {
          Navigator.of(context).pop();
          MaterialPageRoute route =
              MaterialPageRoute(builder: (c) => ManageHomePage());
          Navigator.of(context).push(route);
        },
        child: Text(
          'Log in',
          style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Sharp'),
        ),
      ),
    );
  }

  Widget btnSignup() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.23,
      height: MediaQuery.of(context).size.height * 0.07,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
          onPressed: () {},
          child: Text(
            'Sign up',
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Sharp'),
          )),
    );
  }

  Widget btnLogUp() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        btnLogin(),
        SizedBox(
          width: 60,
        ),
        btnSignup(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Colors.white, Colors.blue.shade700],
            radius: 1,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      'lib/images/Ad.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ShowText(),
              SizedBox(
                height: 10,
              ),
              txtUser(),
              SizedBox(
                height: 10,
              ),
              txtPassword(),
              SizedBox(
                height: 30,
              ),
              btnLogUp(),
            ],
          ),
        ),
      ),
    );
  }
}
