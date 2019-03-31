import 'package:flutter/material.dart';
import 'package:ui_example/get_plant_widget.dart';
import 'package:ui_example/plants.dart';


void main(){
  runApp(MaterialApp(home: Plants(),));
}

class Plants extends StatefulWidget {
  @override
  _PlantsState createState() => _PlantsState();
}

class _PlantsState extends State<Plants> with SingleTickerProviderStateMixin{

  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15,),
          Container(
            width: size.width,
            padding: EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: (){},
                  ),
                FloatingActionButton(
                  onPressed: (){},
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  mini: true,
                  child: Icon(Icons.shopping_cart, color: Colors.black, size: 17.0,),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text("Top Picks",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w500,
            ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "Top",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                Tab(
                  child: Text(
                    "Outdoor",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Indoor",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Plants",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),

              ],
            ),
          ),
          Container(
            height: size.height - 200,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                PlantsList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
