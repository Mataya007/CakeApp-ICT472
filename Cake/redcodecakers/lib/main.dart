import 'package:flutter/material.dart';

void main() 
{
  runApp(CakeApp());
}

class CakeApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      title: 'CakeApp-ICT472',
      theme: ThemeData
      (
        primarySwatch: Colors.pink,
      ),
      home: LoginPage(),
    );
  }
}

//##################### Login Page #########################
class LoginPage extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
            title: Text('REDCODE CAKERS'),        
      ),
      body: Center
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: 
          [
              //logo image here
            Image.asset
            (
              'cakersLogo-Pink.png',
              height: 100,
              width: 100,
            ),
            SizedBox(height: 20),

            ElevatedButton
            (
              child: Text('Register'),
              onPressed: () 
              {
                // Navigate to registration page
                Navigator.push
                (
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
            ),
            ElevatedButton
            (
              child: Text('Login'),
              onPressed: () 
              {
                // Navigate to login page
              },
            ), 
            ElevatedButton
            (
              child: Text('About/Cake App'),
              onPressed: () 
              {
                // Navigate to about page
              },
            ),
          ],
        ),
      ),
    );
  }
}
//################# -- END - Login Page - END -- #####################


//######################### REGISTRATION ###########################

//registration page
class RegistrationPage extends StatefulWidget 
{
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> 
{
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('Registration'),
      ),
      body: Padding
      (
        padding: EdgeInsets.all(16.0),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>
          [
            TextField
            (
              controller: _emailController,
              decoration: InputDecoration(hintText: 'Email'),
            ),
            TextField
            (
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(height: 24.0),
            ElevatedButton
            (
              child: Text('Register'),
              onPressed: () 
              {
                // Perform registration logic
              },
            ),
          ],
        ),
      ),
    );
  }
}

//################ -- END - REGISTRATION - END -- ####################

//################### CAKE VIEW PAGE #####################
class CakeViewPage extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('Cake View'),
      ),
      body: Center
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            TextField
            (
              decoration: InputDecoration
              (
                hintText: 'Search for cakes',
              ),
            ),
            
            TabBar
            (
              tabs: 
              [
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

//###################-- END - CAKE VIEW PAGE - END -- ###############

//********************** CAKE DETAILS ********************/
class CakeDetailsPage extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('Cake Details'),
      ),
      body: Center
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            Text('About Cake'),
            Text('About Bakers'),
            ElevatedButton(
              child: Text('Book Baker'),
              onPressed: () 
              {
                // Navigate to booking page
              },
            ),
            ElevatedButton
            (
              child: Text('Comments/Reviews/Reactions'),
              onPressed: () 
              {
                // Navigate to comments page
              },
            ),
          ],
        ),
      ),
    );
  }
}

//**************** -- END - CAKE DETAILS - END -- ********************/