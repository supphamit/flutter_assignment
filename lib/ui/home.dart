import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  HomepageState createState() {
    // TODO: implement createState
    return new HomepageState();
  }
}

class HomepageState extends State<Homepage> {
  int index = 0;
  List tab = [
    Text("Home",style:TextStyle(fontSize: 15)),
    Text("Notify",style:TextStyle(fontSize: 15)),
    Text("Map",style:TextStyle(fontSize: 15)),
    Text("Profile",style:TextStyle(fontSize: 15)),
    Text("Setup",style:TextStyle(fontSize: 15))
  ];
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        title:Text("Home"),
        centerTitle:true,
      ),
      body:Center(
        child: tab[index]
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.blue,
        ),
      child: BottomNavigationBar(
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_comfy),
            title:Text("Home")
        
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title:Text("Notify")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigation),
            title:Text("Map")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title:Text("Profile")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title:Text("Setup")
          )
            ],
            onTap: (int i){
              setState(() {
               index =i;
              });
            },
      ),
      ),
    );
  }
}