import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  Widget _buildSize({String name}){
    return Container(
      height: 60,
      width: 60,
      color: Colors.black38,
      child: Center(
        child: Text(name,style: TextStyle(fontSize: 20),),
      ),
    );
  }

  Widget _buildColor({Color color}){
    return Container(
      height: 60,
      width: 60,
      color: color,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: (){},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ), onPressed: (){},
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Center(
              child: Container(
                // margin: EdgeInsets.all(20),
                child: Container(
                  width: 350,
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: 350,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images/galaxy.png"))
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Galaxy Watch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                            Text("\$ 240.0",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black54,fontSize: 15),),
                            Text("Description:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    // color: Colors.greenAccent,
                    child: Wrap(
                      children: [
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                          style: TextStyle(
                            fontSize: 15
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text("Size:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 260,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildSize(name: "S"),
                        _buildSize(name: "M"),
                        _buildSize(name: "L"),
                        _buildSize(name: "XL")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Colour:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 260,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildColor(color: Colors.black),
                        _buildColor(color: Colors.brown[300]),
                        _buildColor(color: Colors.brown[800])
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Quantity:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
