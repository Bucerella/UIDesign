import 'package:flutter/material.dart';
import 'package:ui_example/get_plant_widget.dart';

class PlantsList extends StatefulWidget {
  @override
  _PlantsListState createState() => _PlantsListState();
}

class _PlantsListState extends State<PlantsList> {

  ScrollController _scrollController;

  List allDescriptions = [
    "Aloe vera, sometimes described as a \"wonder plant,\" is a short-stemmed shrub. Aloe is a genus that contains more than 500 species of flowering succulent plants. Many Aloes occur naturally in North Africa.",
    "Ficus, (genus Ficus), a group of about 900 species of trees, shrubs, and vines, commonly called figs. Native primarily to tropical areas of East Asia, they are distributed throughout the world’s tropics. Many are tall forest trees that are buttressed by great spreading roots; others are planted as ornamentals.",
    "Flowering plants can be defined as those plants, which can produce flowers, fruits and seeds. They are completely different from nonflowering plants. Flowering plants are the largest groups within the plant kingdom.There are around 260,000 species of flowering plant and about 90% species are identified.",
  ];
  String description;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changedesc);
    setState(() {
      description = allDescriptions[0];
    });
  }
  changedesc(){
    var value = _scrollController.offset.round();
    print(value);
    var descIndex = (value/170).round();
    setState(() {
      description = allDescriptions[descIndex];
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          Container(
            height: 350.0,
            child: ListView(
              padding: EdgeInsets.only(left: 25.0),
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              children: <Widget>[

                getPlantCard("images/aloevera.png","40","OUTDOOR","Aloe Vera",context),

                SizedBox(width: 15,),
                getPlantCard("images/ficus.png","75","INDOOR","Ficus",context),
                SizedBox(width: 15,),

                getPlantCard("images/flowerplant.png","95","OUTDOOR","Flower Plant",context),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25,top: 10),
            child:  Text(
              "Description",
              style: TextStyle(
                color: Color(0Xff399d63),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25,top: 10),
            child: Text(description,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,

            ),
            ),
          ),
        ],
    );
  }
}
