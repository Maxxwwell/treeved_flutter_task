import 'package:flutter/material.dart';
import 'package:treeved_flutter_task/widgets/preferred_model.dart';

class Filters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.close, size: 30),
                  const Text('Filters',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      )),
                  Text(
                    'RESET',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Preferred Model',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 80,
                child: const PreferredModel(),
              ),
               const SizedBox(height: 20),
              const Text(
                'Vehicle Type  ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
