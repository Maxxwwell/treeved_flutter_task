import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treeved_flutter_task/screens/showing_results.dart';
import 'package:treeved_flutter_task/screens/tabs/buy.dart';
import 'package:treeved_flutter_task/screens/tabs/rent.dart';
import 'package:treeved_flutter_task/screens/tabs/sell.dart';

class Explore extends StatefulWidget {
  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.apps_outlined,
            color: Theme.of(context).primaryColor,
            size: 35,
          ),
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/dp.PNG'),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Thousands of cars \nwaiting for you',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShowingResults(),
                    )),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  prefixIcon: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Rent',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            )),
                        Icon(
                          Icons.expand_more,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ),
                  hintText: ' Type city, neighborhood or address',
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: TabBar(
                    labelPadding: const EdgeInsets.symmetric(horizontal: 45),
                    controller: _tabController,
                    isScrollable: true,
                    indicator: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.circular(15),
                      color: Theme.of(context).primaryColor,
                    ),
                    unselectedLabelColor: Theme.of(context).primaryColor,
                    labelColor: Colors.white,
                    indicatorColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,

                    //  overlayColor: ,
                    tabs: const [
                      Tab(
                        child: Text('Buy'),
                      ),
                      Tab(
                        child: Text('Rent'),
                      ),
                      Tab(
                        child: Text('Sell'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.48,
                  child: TabBarView(
                    controller: _tabController,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      BuyTab(),
                      RentTab(),
                      SellTab(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
