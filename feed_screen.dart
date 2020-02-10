import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  bool toggleValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo.png',
            height: 24, fit: BoxFit.cover, alignment: FractionalOffset.center),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: ListView(children: <Widget>[
        Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'Grohe Sense Guard',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFF0094e9),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Container(
            color: Colors.white,
            child: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                height: 80,
                width: double.infinity,
                padding: EdgeInsets.only(top: 20),
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
                          'Conoce más acerca de Grohe Sense Guard',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Manual de instrucción, hasta como instalarlo en la casa del cliente',
                          style: TextStyle(fontSize: 11, color: Colors.white),
                          maxLines: 2,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Trabajos para hoy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF0094e9),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 600),
                    height: 27.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: toggleValue
                            ? Color(0xFF33cccc)
                            : Colors.grey[300]),
                    child: Stack(
                      children: <Widget>[
                        AnimatedPositioned(
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeIn,
                            top: 3.0,
                            left: toggleValue ? 30.0 : 0.0,
                            right: toggleValue ? 0.0 : 30.0,
                            child: InkWell(
                              onTap: toggleButton,
                              child: AnimatedSwitcher(
                                duration: Duration(milliseconds: 300),
                                transitionBuilder: (Widget child,
                                    Animation<double> animation) {
                                  return RotationTransition(
                                      child: child, turns: animation);
                                },
                                child: toggleValue
                                    ? Icon(
                                        Icons.swap_horizontal_circle,
                                        color: Colors.white,
                                        size: 20.0,
                                        key: UniqueKey(),
                                      )
                                    : Icon(
                                        Icons.swap_horizontal_circle,
                                        color: Colors.white,
                                        size: 20.0,
                                        key: UniqueKey(),
                                      ),
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                height: 70,
                width: double.infinity,
                padding: EdgeInsets.only(top: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
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
                          'assets/profile4.png',
                          width: 60,
                          height: 60,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 16),
                        Text(
                          'Calle Martín de Vargas 40',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Hace 50min atras',
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                height: 70,
                width: double.infinity,
                padding: EdgeInsets.only(top: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
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
                          'assets/profile4.png',
                          width: 60,
                          height: 60,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 16),
                        Text(
                          'Calle Sargento Barriga 6',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Hace 5h atras',
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                height: 70,
                width: double.infinity,
                padding: EdgeInsets.only(top: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
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
                          'assets/profile4.png',
                          width: 60,
                          height: 60,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 16),
                        Text(
                          'Rúa Vasco Diaz Tanco 18',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Hace 28min atras',
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                height: 70,
                width: double.infinity,
                padding: EdgeInsets.only(top: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
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
                          'assets/profile4.png',
                          width: 60,
                          height: 60,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 16),
                        Text(
                          'Calle de la Castellana 6',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Hace 2h atras',
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ])),
      ]),
    );
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}
