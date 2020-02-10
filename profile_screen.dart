import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'USUARIO',
            style: TextStyle(
              color: Colors.black87,
              fontFamily: 'syncopate',
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: AssetImage('assets/profile.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    'Erik Alvarado',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF0094e9),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 17,
                      ),
                      Text(
                        'Madrid, Embajadores',
                        style: TextStyle(
                            fontSize: 10, color: Colors.black.withOpacity(0.6)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
              child: Container(
                color: Colors.white,
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                    height: 100,
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xFF33cccc), Color(0xFF0094e9)]),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            spreadRadius: 1,
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              '112 €',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Ganados',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '100',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Clientes',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '3',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Incidentes',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Actividad Reciente',
                    style: TextStyle(fontSize: 20, color: Color(0xFF0094e9), fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(25, 10, 5, 10),
                        padding: EdgeInsets.only(top: 2),
                        height: 80,
                        width: 150,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF33cccc),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 0,
                            spreadRadius: 0,
                          )
                        ]),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/profile1.png',
                              width: 60,
                              height: 60,
                            ),
                            SizedBox(
                              height: 2,
                            ),                   
                            Text(
                              'Instalaciones pendientes',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w800),
                            )
                          ],
                        ),    
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 10, 25, 10),
                        padding: EdgeInsets.only(top: 2),
                        height: 80,
                        width: 150,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF33cccc),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 0,
                            spreadRadius: 0,
                          )
                        ]),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/profile2.png',
                              width: 60,
                              height: 60,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Historial de instalaciones',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w800),
                            )
                          ],
                        ),    
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                    height: 90,
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0,
                            spreadRadius: 0,
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/profile3.png',
                              width: 60,
                              height: 60,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Configuraciones',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w800),
                            )
                          ],
                        ),                                              
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
