import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        cursorColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),


        ),
      ),
      
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email, password;

  Widget _emailForm() {
    return Padding(
      padding: EdgeInsets.all(1),
      child: TextFormField(
        style: TextStyle(
          color: Colors.white,
        ),
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
          Icons.email,
          color: Colors.white,
          ),
        labelText: "E-mail",
        labelStyle: TextStyle(
          color: Colors.white38,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),

        ),
        

      ),
    );
  }
  Widget _passwordForm() {
    return Padding(
      padding: EdgeInsets.all(1),
      child: TextFormField(
        style: TextStyle(
          color: Colors.white,
        ),
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock_outline,
            color: Colors.white,
          ),
          labelText: "Password",
          labelStyle: TextStyle(
            color: Colors.white38,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),

        ),


      ),
    );
  }
  Widget _forgetPassword(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        FlatButton(
            onPressed: () {},
            child: Text(
                "Forgot Password?",
            style: TextStyle(
              color: Colors.white,
            ),
            ))
      ],
    );
  }
  Widget _loginButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4*MediaQuery.of(context).size.height/22,
          width: 5*MediaQuery.of(context).size.width/10,
          margin: EdgeInsets.only(top: 5),
          child: RaisedButton(
            splashColor: Colors.redAccent,
            elevation: 10.0,
             color: Colors.white,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(25.0),
             ),
              onPressed: () {},
              child: Text(
                "LOGIN",
                style: TextStyle(
                  color: Colors.redAccent,
                  letterSpacing: 1.5,
                ),
              ),
          ),
        )
      ],
    );
  }
  Widget _orRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 5),
          child: Text(
              " OR ",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
  Widget _googleButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4*MediaQuery.of(context).size.height/20,
          width: 5*MediaQuery.of(context).size.width/10,
          margin: EdgeInsets.only(top: 5),
          child: RaisedButton(
            elevation: 10.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            onPressed: () {},
            child: Text(
              "sign in with google",
              style: TextStyle(
                color: Colors.redAccent,
                letterSpacing: 1.5,
              ),
            ),
          ),
        )
      ],
    );
  }
  Widget _signUpButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          child: FlatButton(
            onPressed: () {},
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Dont have an account?",
                  ),
                  TextSpan(
                    text: "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )

                  )
                ]
              )
            )
          ),
        )

      ],
    );
  }


  Widget _buildForm() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _emailForm(),
                    _passwordForm(),
                    _forgetPassword(),
                    _loginButton(),
                    _orRow(),
                    _googleButton(),
                  ],
                ),
              ),
            ),
      ],
    );
  }

  Widget _signIn() {
    return Container(
      margin: EdgeInsets.only(top: 55),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Login",
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height / 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2.5,
          ),
        ),
      ],
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.redAccent[100],
              Colors.redAccent[200],
              Colors.redAccent[400],
              Colors.red[700]
            ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _signIn(),
                _buildForm(),
                _signUpButton(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
