import 'package:flutter/material.dart';
import 'package:treeved_flutter_task/models/cars_rent.dart';

class RentDetails extends StatelessWidget {

  final RentCar rentCar;

 RentDetails({required this.rentCar});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(rentCar.name),
      ),
      body: Container(
        child: Image.asset(rentCar.image),
      ),
    );
  }
}