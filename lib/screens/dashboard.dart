import 'package:flutter/material.dart';
import 'package:fedegan/const.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c4cff),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
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
                        'Dashboard',
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
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text('Leads', style: TextStyle(fontSize: 20)),
                          Text('Hoy', style: TextStyle(fontSize: 20)),
                          Text('5', style: TextStyle(fontSize: 35)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text('Leads', style: TextStyle(fontSize: 20)),
                          Text('Semana', style: TextStyle(fontSize: 20)),
                          Text('10', style: TextStyle(fontSize: 35)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text('Leads', style: TextStyle(fontSize: 20)),
                          Text('Mes', style: TextStyle(fontSize: 20)),
                          Text('30', style: TextStyle(fontSize: 35)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Bulletin Board',
                        style: TextStyle(fontSize: 18),
                      ),
                      Divider(
                        height: 30.0,
                        thickness: 2.0,
                        color: Colors.grey,
                        indent: 20.0,
                        endIndent: 20.0,
                      ),
                      Text(
                        '''Colombia importó 29 veces más lácteos de los que exportó en 1ra mitad de 2020


Las 48.136 toneladas de derivados lácteos que entraron en los primeros seis meses del año, cuyo costo se elevó a los USD 134,6 millones, parecen incomparables frente a las 1634 toneladas que exportó Colombia en el mismo periodo, y que representaron ingresos inferiores a los seis millones de dólares.''',
                        textAlign: TextAlign.justify,
                      ),
                    ],
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
                    'Nuevo Lead',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'home');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
