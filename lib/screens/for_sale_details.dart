

import 'package:flutter/material.dart';
import 'package:treeved_flutter_task/models/for_sale.dart';

class ForSaleDetails extends StatelessWidget {

  final ForSale forSale;

 ForSaleDetails({required this.forSale});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(forSale.name),
      ),
      body: Container(
        child: Image.asset(forSale.image),
      ),
    );
  }
}