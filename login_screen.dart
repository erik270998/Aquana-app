import 'package:flutter/material.dart';
import 'package:aquana_app/screens/signup_screen.dart';
import 'package:aquana_app/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static final String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background2.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  ('assets/logo.png'),
                  height: 70,
                  width: 200,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Text(
                    'Plataforma de planificación para instalación de Aquana',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 1.0,),
                Image.asset(
                  'assets/welcome.png',
                  width: 250,
                  height: 250,
                ),
                SizedBox(height: 1.0,),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 50, 10),
                        child: TextFormField(
                          decoration: InputDecoration(labelText: 'Email',
                          icon: const Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: const Icon(Icons.person)),
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                            const Radius.circular(50.0),),                        
                          ),),
                          validator: (input) => !input.contains('@')
                              ? 'Please enter a valid email'
                              : null,
                          onSaved: (input) => _email = input,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 50, 10),
                        child: TextFormField(
                          decoration: InputDecoration(labelText: 'Password',
                          icon: const Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: const Icon(Icons.lock)),
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                            const Radius.circular(50.0),),                        
                          ),),
                          validator: (input) => input.length < 6
                              ? 'Must be at least 6 characters'
                              : null,
                          onSaved: (input) => _password = input,
                          obscureText: true,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {Navigator.pushNamed(context, HomeScreen.id);},
                  child: Container(
                    width: 250,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF33cccc),
                          Color(0xFF0094e9),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF0057b8),
                          offset: Offset(2, 2),
                          blurRadius: 2,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Acceso',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.0,),
                GestureDetector(
                  onTap: () {Navigator.pushNamed(context, HomeScreen.id);},
                  child: Container(
                    width: 250,
                    height: 20,
                    child: Center(
                      child: Text(
                        'Se me olvidó la contraseña',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                GestureDetector(
                  onTap: () {Navigator.pushNamed(context, SignupScreen.id);},
                  child: Container(
                    width: 250,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(2, 2),
                          blurRadius: 3,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Registrarse',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}