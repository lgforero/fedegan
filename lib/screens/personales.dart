import 'package:flutter/material.dart';
import 'package:fedegan/const.dart';
import 'package:fedegan/models/answers.dart';

class Personales extends StatelessWidget {
  final PageController pageController;
  final Answers answers;
  String nombre;
  String cedula;
  String telefono;
  String email;

  Personales(this.pageController, this.answers);

  TextEditingController _nombreController = TextEditingController();
  TextEditingController _cedulaController = TextEditingController();
  TextEditingController _telefonoController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c4cff),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Form(
            child: Column(
              children: [
                SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 0.0, vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          'Datos Personales',
                          style: styleDarkBold,
                        ),
                      ),
                      Material(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(
                            10.0,
                          ),
                          color: Colors.white,
                          child: Image(
                            image: AssetImage('assets/logos.png'),
                            width: 80,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    controller: _nombreController,
                    validator: (val) =>
                        val.length < 6 ? 'Ingrese nombre completo' : null,
                    autofocus: true,
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
                  height: 35.0,
                ),
                SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _cedulaController,
                    validator: (val) =>
                        val.length < 6 ? 'Ingrese cédula válida' : null,
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
                  height: 35.0,
                ),
                SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: _telefonoController,
                    validator: (val) =>
                        val.length == 10 ? 'Ingrese teléfono válido' : null,
                    onChanged: (value) {
                      telefono = value;
                    },
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color(0xff1c4cff),
                      ),
                      hintText: 'Telefono',
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
                  height: 35.0,
                ),
                SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    validator: (val) => val.contains('@') && val.length < 6
                        ? 'Ingrese email válido'
                        : null,
                    onChanged: (value) {
                      email = value;
                    },
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xff1c4cff),
                      ),
                      hintText: 'Email',
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
                        'Siguiente',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        pageController.animateToPage(1,
                            duration: Duration(milliseconds: 700),
                            curve: Curves.easeInOut);
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
