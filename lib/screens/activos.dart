import 'package:fedegan/const.dart';
import 'package:flutter/material.dart';
import 'package:fedegan/models/answers.dart';

class Activos extends StatefulWidget {
  final PageController pageController;
  final Answers answers;

  Activos(this.pageController, this.answers);

  @override
  _ActivosState createState() => _ActivosState();
}

class _ActivosState extends State<Activos> {
  String municipio;

  String qtyAnimales;

  String sysProduccion;

  String sysId;

  String observaciones;

  String prodDropdownValue = 'Seleccionar';

  String idDropdownValue = 'Seleccionar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c4cff),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
                width: double.infinity,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'Activos',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
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
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Producción',
                      style: styleDarkBold,
                    ),
                    DropdownButton<String>(
                      dropdownColor: Color(0xffff2bd5),
                      value: prodDropdownValue,
                      icon: Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.white),
                      underline: Container(
                        height: 1.5,
                        color: Colors.white,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          prodDropdownValue = newValue;
                        });
                      },
                      items: <String>['Seleccionar', 'Carne', 'Leche', 'Mixto']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Identificacion',
                      style: styleDarkBold,
                    ),
                    DropdownButton<String>(
                      dropdownColor: Color(0xffff2bd5),
                      value: idDropdownValue,
                      icon: Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.white),
                      underline: Container(
                        height: 1.5,
                        color: Colors.white,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          idDropdownValue = newValue;
                        });
                      },
                      items: <String>[
                        'Seleccionar',
                        'Chip',
                        'Chapeta',
                        'Bolo',
                        'Tatuaje',
                        'Hierro',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              SizedBox(
                width: 300.0,
                child: TextField(
                  onChanged: (value) {
                    municipio = value;
                  },
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.gps_fixed,
                      color: Color(0xff1c4cff),
                    ),
                    hintText: 'Municipio',
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
                height: 30.0,
              ),
              SizedBox(
                width: 300.0,
                child: TextField(
                  onChanged: (value) {
                    observaciones = value;
                  },
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.note_add,
                      color: Color(0xff1c4cff),
                    ),
                    hintText: 'Observaciones',
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
                height: 30.0,
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
                  Navigator.pushNamed(context, 'firma');
                },
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Container(
          child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                widget.pageController.animateToPage(0,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut);
              }),
        ),
      ],
    );
  }
}
