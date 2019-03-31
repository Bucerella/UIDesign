import 'package:flutter/material.dart';

class PlantsDetail extends StatefulWidget {
  @override
  _PlantsDetailState createState() => _PlantsDetailState();
}

class _PlantsDetailState extends State<PlantsDetail> {
  @override

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: ListView(
        children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Color(0xff399d63),
                  ),
                ),
                Positioned(
                  top: size.height / 2 ,
                  child: Container(
                    height: size.height / 2 ,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                      color: Colors.white,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white,),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.0, left: size.width - 60,
                  ),
                  child: FloatingActionButton(
                      onPressed: (){},
                    backgroundColor: Color(0XFF4DA774),
                    mini: true,
                    elevation: 0,
                    child: Icon(Icons.shopping_cart,
                    color: Colors.black, size: 15,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: size.width - 30,
                  child: Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(color: Color(0Xff399d63),

                        ),
                      ),
                    ),
                  ),
                ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'INDOOR',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF8AC7A4)),
                        ),
                        Text(
                          'Ficus',
                          style: TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          'FROM',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF8AC7A4)),
                        ),
                        Text(
                          '\$30',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          'SIZES',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF8AC7A4)),
                        ),
                        Text(
                          'Small',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.black),
                          child: Center(
                            child: Icon(Icons.shopping_cart, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                Positioned(
                  top: size.height / 2  - 185.0,
                  left: size.width / 2 - 80.0,
                  child: Image(
                    image: AssetImage('images/whiteplant.png'),
                    fit: BoxFit.cover,
                    height: 250.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height - 350,
                      left: 20.0,
                      right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'All to know...',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        'If you are completely new to houseplants then Ficus is a brilliant first plant to adopt, it is very easy to look after and won\'t occupy too much space.',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        'Details',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Plant height: 35-45cm;',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        'Nursery pot width: 12cm',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
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
