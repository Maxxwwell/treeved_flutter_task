import 'package:flutter/material.dart';
import 'package:treeved_flutter_task/models/for_sale.dart';

class ForSaleCard extends StatelessWidget {
  final ForSale forSale;
  final VoidCallback press;
  ForSaleCard({
    required this.forSale,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 268,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 148,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(forSale.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 32,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        forSale.number,
                        style: const TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 32,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "\$${forSale.price}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 32,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'On Sale',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 32,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Installment',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 140),
                Icon(
                  Icons.favorite_border, size: 30,
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
            const SizedBox(height: 7),
            Text(
              forSale.name,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                // fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.place_outlined,
                  color: Theme.of(context).primaryColor,
                ),
                Text(
                  forSale.location,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            Text(
              'View Detals',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
               
              ),
            )
          ],
        ),
      ),
    );
  }
}
