import 'package:flutter/material.dart';
import 'package:treeved_flutter_task/models/cars_rent.dart';
import 'package:treeved_flutter_task/screens/rent_details.dart';
import 'package:treeved_flutter_task/widgets/rent_card.dart';

class RentTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 15),
      itemCount: forRent.length,
      itemBuilder: (context, index) => RentCard(
        rentCar: forRent[index],
        press: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RentDetails(
              rentCar: forRent[index],
            ),
          ),
        ),
      ),
    );
  }
}
