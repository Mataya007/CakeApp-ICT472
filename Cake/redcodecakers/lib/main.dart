import 'package:flutter/material.dart';

void main() {
  runApp(CakeApp());
}

class CakeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CakeApp-ICT472',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login/Registration'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Register'),
              onPressed: () {
                // Navigate to registration page
              },
            ),
            RaisedButton(
              child: Text('Login'),
              onPressed: () {
                // Navigate to login page
              },
            ),
            RaisedButton(
              child: Text('About/Cake App'),
              onPressed: () {
                // Navigate to about page
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CakeViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cake View'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for cakes',
              ),
            ),
            TabBar(
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'About'),
                Tab(text: 'Bakers near you'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CakeDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cake Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('About Cake'),
            Text('About Bakers'),
            RaisedButton(
              child: Text('Book Baker'),
              onPressed: () {
                // Navigate to booking page
              },
            ),
            RaisedButton(
              child: Text('Comments/Reviews/Reactions'),
              onPressed: () {
                // Navigate to comments page
              },
            ),
          ],
        ),
      ),
    );
  }
}
