import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login or Signup Screen",
      home: LoginOrSignupScreen(),
    );
  }
}

class LoginOrSignupScreen extends StatelessWidget {
  const LoginOrSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login or Signup Page",
          style: GoogleFonts.notoSerif(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 236, 203, 94),
        centerTitle: true,
        elevation: 10,
      ),

      body: LoginOrSignupBody(),
    );
  }
}

class LoginOrSignupBody extends StatelessWidget {
  const LoginOrSignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.all(20),
        alignment: Alignment.topCenter,
        width: 500,
        height: 400,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [Colors.white, const Color.fromARGB(255, 205, 241, 121)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
      
            Text(
              'Welcome to the Login or Signup Page',
              style: GoogleFonts.josefinSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      
            SizedBox(height: 20),
      
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14.0,
                vertical: 5.0,
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
      
            SizedBox(height: 5),
      
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14.0,
                vertical: 5.0,
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
      
            SizedBox(height: 5),
      
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text('Remember Me'),
              ],
            ),
      
            ElevatedButton(
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.grey),
                backgroundColor: MaterialStateProperty.all(Colors.blue.shade300),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {},
              child: Text('Login '),
            ),
      
            SizedBox(height: 10),
      
            InkWell(
              onTap: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.blue),
              ),
            ),
      
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dont have an account?"),
      
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
