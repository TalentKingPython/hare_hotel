import 'package:flutter/material.dart';

void main() {
  runApp(Desktop());
}

class Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Travel App'),
          actions: [
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                // Sign In action
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search now ...',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.list_alt_outlined),
                title: Text('Overview'),
                onTap: () {
                  // Navigate to Overview
                },
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('Things To Do'),
                onTap: () {
                  // Navigate to Things To Do
                },
              ),
              ListTile(
                leading: Icon(Icons.restaurant),
                title: Text('Restaurant'),
                onTap: () {
                  // Navigate to Restaurant
                },
              ),
              ListTile(
                leading: Icon(Icons.directions_car),
                title: Text('Car Rental'),
                onTap: () {
                  // Navigate to Car Rental
                },
              ),
              ListTile(
                leading: Icon(Icons.directions_boat),
                title: Text('Cruise'),
                onTap: () {
                  // Navigate to Cruise
                },
              ),
              ListTile(
                leading: Icon(Icons.local_taxi),
                title: Text('Taxi'),
                onTap: () {
                  // Navigate to Taxi
                },
              ),
              ListTile(
                leading: Icon(Icons.flight),
                title: Text('Flight'),
                onTap: () {
                  // Navigate to Flight
                },
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Europe / Norway / Western Norway / Bergen',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
