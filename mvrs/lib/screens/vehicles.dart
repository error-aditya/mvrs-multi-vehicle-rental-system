import 'package:flutter/material.dart';

class Vehicles extends StatefulWidget {
  const Vehicles({super.key});

  @override
  State<Vehicles> createState() => _VehiclesState();
}

class _VehiclesState extends State<Vehicles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("vehicle"),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        showUnselectedLabels: true,
        enableFeedback: true,

        selectedItemColor: Colors.blue,
        onTap: (index) {
          // Handle navigation
          Navigator.pushNamed(context, '/dashboard');
          // Handle navigation
          switch (index) {
            case 0:
              // Handle home navigation
              Navigator.pushNamed(context, '/dashboard');
              break;
            case 1:
              // Handle booking navigation
              // Handle vehicles navigation
              Navigator.pushNamed(context, '/vehicles');
              break;
            case 2:
              // Handle history navigation
              Navigator.pushNamed(context, '/history'); 
              break;
            case 3:
              // Handle profile navigation
              Navigator.pushNamed(context, '/profile');
              break;
          } 
        },
        backgroundColor: Colors.blue,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.directions_car), label: 'Vehicles'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}