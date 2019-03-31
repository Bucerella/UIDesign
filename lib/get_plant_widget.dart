import 'package:flutter/material.dart';
import 'package:ui_example/plant_detail.dart';

Widget getPlantCard(
    String imgPath, String price, String plantType, String plantName,BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
        height: 325,
        width: 225,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0Xff399d63),
          ),
          height: 250,
          width: 250,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "FROM",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff8ac7a4),
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '\$ $price',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Image(
                image: AssetImage(imgPath),
                height: 165,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        plantType,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff8ac7a4),
                        ),
                      ),
                      Text(
                        plantName,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff8ac7a4),
                        style: BorderStyle.solid,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color(0xff399d63),
                    ),
                    child: Icon(
                      Icons.wb_sunny,
                      color: Colors.white.withOpacity(0.4),
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff8ac7a4),
                        style: BorderStyle.solid,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color(0xff399d63),
                    ),
                    child: Icon(
                      Icons.hot_tub,
                      color: Colors.white.withOpacity(0.4),
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff8ac7a4),
                        style: BorderStyle.solid,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color(0xff399d63),
                    ),
                    child: Icon(
                      Icons.wb_sunny,
                      color: Colors.white.withOpacity(0.4),
                      size: 20,
                    ),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlantsDetail()
                        ));
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(color: Color(0xff399d63)),
                      child: Icon(Icons.help_outline,
                      color: Colors.white.withOpacity(0.4),
                          size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(left: 90, top: 300),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.black,
          ),
          child: Center(
            child: Icon(Icons.shopping_cart, color: Colors.white,),
          ),
        ),
      ),

    ],
  );
}
