import 'package:flutter/material.dart';
import 'package:treeved_flutter_task/models/for_sale.dart';
import 'package:treeved_flutter_task/screens/for_sale_details.dart';
import 'package:treeved_flutter_task/widgets/for_sale_card.dart';

class ForSaleTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 15),
      itemCount: showingResult.length,
      itemBuilder: (context, index) => ForSaleCard(
        forSale: showingResult[index],
        press: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ForSaleDetails(
              forSale: showingResult[index],
            ),
          ),
        ),
      ),
    );
  }
}
