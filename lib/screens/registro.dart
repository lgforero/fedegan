import 'package:flutter/material.dart';
import 'package:fedegan/const.dart';

class Registro extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  String cedula;
  String nombre;
  String uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c4cff),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45),
              ),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image(
                    image: AssetImage('assets/logos.png'),
                    width: 450,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Tu aliado en Seguros',
              style: styleDarkBold,
            ),
            SizedBox(
              height: 50.0,
            ),
            SizedBox(
              width: 300.0,
              child: TextField(
                onChanged: (value) {
                  nombre = value;
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xff1c4cff),
                  ),
                  hintText: 'Nombre',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 12.0,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black54,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xffff2bd5),
                      width: 3.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 300.0,
              child: TextField(
                onChanged: (value) {
                  cedula = value;
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.credit_card,
                    color: Color(0xff1c4cff),
                  ),
                  hintText: 'Cédula',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 12.0,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black54,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xffff2bd5),
                      width: 3.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            RaisedButton(
              elevation: 6.0,
              color: Color(0xffff2bd5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Color(0xff1c4cff))),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.0,
                  vertical: 10.0,
                ),
                child: Text(
                  'Registrarse',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
