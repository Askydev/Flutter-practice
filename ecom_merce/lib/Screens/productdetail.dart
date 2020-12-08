import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
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
                    height: 300,
                    color: Colors.greenAccent,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
