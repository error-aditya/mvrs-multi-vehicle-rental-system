import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String selectedLocation = 'Ahmedabad';
  DateTime tripStart = DateTime.now();
  DateTime tripEnd = DateTime.now().add(Duration(days: 1));
  bool deliveryAndPickup = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find Your Ride',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search for the location',
                  suffixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {
                  setState(() {
                    selectedLocation = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      readOnly: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Trip Start',
                        suffixIcon: Icon(Icons.calendar_today),
                      ),
                      onTap: () => _selectDate(context, true),
                      controller: TextEditingController(
                        text: "${tripStart.toLocal()}".split(' ')[0],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      readOnly: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Trip End',
                        suffixIcon: Icon(Icons.calendar_today),
                      ),
                      onTap: () => _selectDate(context, false),
                      controller: TextEditingController(
                        text: "${tripEnd.toLocal()}".split(' ')[0],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    value: deliveryAndPickup,
                    onChanged: (bool? value) {
                      setState(() {
                        deliveryAndPickup = value!;
                      });
                    },
                  ),
                  Text('Delivery & Pick-up, from anywhere'),
                ],
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text('SEARCH CAR'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Available Vehicles',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildVehicleCard('Sedan', 'A:/GitHub/mvrs-multi-vehicle-rental-system/mvrs/assets/vehicles/sedan.jpeg', '₹1500/day'),
              // _buildVehicleCard('SUV', 'assets/suv.jpg', '₹2500/day'),
              // _buildVehicleCard('Hatchback', 'assets/hatchback.jpg', '₹1200/day'),
              SizedBox(height: 20),
              Text(
                'Your Booking History',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildBookingHistoryCard('Sedan', 'Jul 25, 2023 - Jul 28, 2023', 'Completed'),
              _buildBookingHistoryCard('SUV', 'Jul 15, 2023 - Jul 18, 2023', 'Completed'),
            ],
          ),
        ),
      ),
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

  Widget _buildVehicleCard(String title, String imagePath, String price) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Image.asset(imagePath, width: 50, height: 50),
        title: Text(title),
        subtitle: Text(price),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }

  Widget _buildBookingHistoryCard(String title, String dateRange, String status) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Icon(Icons.directions_car, size: 50),
        title: Text(title),
        subtitle: Text(dateRange),
        trailing: Text(status),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context, bool isStart) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isStart ? tripStart : tripEnd,
      firstDate: DateTime(2021),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != (isStart ? tripStart : tripEnd)) {
      setState(() {
        if (isStart) {
          tripStart = picked;
        } else {
          tripEnd = picked;
        }
      });
    }
  }
}
