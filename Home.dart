import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.indigo,
            //width: 550.0,
            //height: 320.0,
           // padding: EdgeInsets.only(top: 100.0, left: 25, right: 25),
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text('lambo',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 50,
                              fontFamily: 'ubuntu',
                              fontWeight: FontWeight.w300,
                              //                    fontStyle: FontStyle.italic,
                              color: Colors.white))),
                  Expanded(
                    child: Text('lambo is  good looking car',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontFamily: 'ubuntu',
                            fontWeight: FontWeight.w300,
                            //                  fontStyle: FontStyle.italic,
                            color: Colors.white)),
                  )
                ],
              ),
//            margin: EdgeInsets.only(left: 25.0),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text('Bugatti',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 50,
                              fontFamily: 'ubuntu',
                              fontWeight: FontWeight.w300,
                              //                    fontStyle: FontStyle.italic,
                              color: Colors.white))),
                  Expanded(
                    child: Text('Bugatti is expensive',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontFamily: 'ubuntu',
                            fontWeight: FontWeight.w300,
                            //                  fontStyle: FontStyle.italic,
                            color: Colors.white)),
                  )
                ],
              ),
              Imag_es(),
              CarBookBuutton()
            ])));
  }
}

class Imag_es extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage ai = AssetImage('images/lambo.jpg');
    AssetImage ai1 = AssetImage('images/bugatti.jpg');
    Image image = Image(image: ai, width: 250, height: 100);
    Image image1 = Image(image: ai1, width: 250, height: 100);
    return Container(
        margin: EdgeInsets.only(top: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: image,
            ),
            Expanded(child: image1)
          ],
        ));
  }
}

class CarBookBuutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20, left: 15),
//        width: 250,
//        height: 50,
        child: RaisedButton(
            color: Colors.red,
            child: Text(
              "Book your car",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontFamily: 'ubuntu',
                fontWeight: FontWeight.w700,
              ),
            ),
            elevation: 10.0,
            onPressed: () => BookCar(context)));
  }

  void BookCar(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text(
        "car booked successfully",
        style: TextStyle(
          color: Colors.orange,
          fontSize: 25,
          fontFamily: 'ubuntu',
          fontWeight: FontWeight.w700,
        ),
      ),
      content: Text(
        "enjoy the ride",
        style: TextStyle(
          color: Colors.orange,
          fontSize: 20,
          fontFamily: 'ubuntu',
          fontWeight: FontWeight.w300,
        ),
      ),
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
