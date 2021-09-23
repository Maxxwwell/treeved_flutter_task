import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowingResults extends StatefulWidget {
  @override
  State<ShowingResults> createState() => _ShowingResultsState();
}

class _ShowingResultsState extends State<ShowingResults>  with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[50],
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.white)),
                  prefixIcon: Icon(Icons.arrow_back_sharp),
                  hintText: ' Tesla Model 3',
                  hintStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                  suffixIcon: Icon(
                    Icons.cancel,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                title: Text(
                  'Showing Result',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  '94 Matches found',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                trailing: ElevatedButton.icon(
                  onPressed: () {},
                  icon:  Icon(Icons.tune,
                  color: Theme.of(context).primaryColor,
                  ),
                  label: Text(
                    'Filters',
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).primaryColor),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[50],
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 30,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                          width: 1, color: Theme.of(context).primaryColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: TabBar(
                    labelPadding: const EdgeInsets.symmetric(horizontal: 77),
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
                        child: Text('For Sale'),
                      ),
                      Tab(
                        child: Text('For Rent'),
                      ),
                     
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.63,
                  color: Colors.red
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
