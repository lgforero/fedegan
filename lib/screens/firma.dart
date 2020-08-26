import 'package:flutter/material.dart';
import 'package:fedegan/const.dart';
import 'package:signature/signature.dart';
import 'dart:ui';

class Firma extends StatefulWidget {
  @override
  _FirmaState createState() => _FirmaState();
}

class _FirmaState extends State<Firma> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 3,
    penColor: Colors.black,
    exportBackgroundColor: Colors.transparent,
  );

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => print("Value changed"));
  }

  bool acepto1 = false;
  bool acepto2 = false;
  bool acepto3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c4cff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Autorizacion de',
                    style: styleDarkBold,
                  ),
                  Text(
                    ' contacto',
                    style: styleDarkBold,
                  ),
                ],
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
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Autorizo ser contactado:',
                    style: styleDarkBold,
                  ),
                  Text(
                    'Acepto',
                    style: styleDarkBold,
                  ),
                ],
              ),
            ),
          ),
          CheckboxListTile(
            value: acepto1,
            title: Text(
              'Por teléfono',
              style: styleDarkBold,
            ),
            onChanged: (bool value) {
              setState(() {
                acepto1 = value;
              });
            },
          ),
          CheckboxListTile(
            value: acepto2,
            title: Text(
              'Por Email',
              style: styleDarkBold,
            ),
            onChanged: (bool value) {
              setState(() {
                acepto2 = value;
              });
            },
          ),
          CheckboxListTile(
            value: acepto3,
            title: Text(
              'Por Texto o WhatsApp',
              style: styleDarkBold,
            ),
            onChanged: (bool value) {
              setState(() {
                acepto3 = value;
              });
            },
          ),
          Column(
            children: [
              Signature(
                controller: _controller,
                height: 200.0,
                backgroundColor: Color(0xff00db47),
              ),
              Container(
                decoration: const BoxDecoration(color: Color(0xffff2bd5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    //SHOW EXPORTED IMAGE IN NEW ROUTE
                    IconButton(
                      icon: const Icon(Icons.replay),
                      color: Colors.white,
                      onPressed: () {
                        setState(() => _controller.clear());
                      },
                    ),
                    //CLEAR CANVAS
                    IconButton(
                      icon: const Icon(Icons.check),
                      color: Colors.white,
                      onPressed: () async {
                        if (_controller.isNotEmpty) {
                          //var data = await _controller.toPngBytes();
                          Navigator.pushReplacementNamed(context, 'thanks');

                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (BuildContext context) {
                          //       return Scaffold(
                          //         appBar: AppBar(),
                          //         body: Center(
                          //             child: Container(
                          //                 color: Colors.grey[300],
                          //                 child: Image.memory(data))),
                          //       );
                          //     },
                          //   ),
                          // );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
