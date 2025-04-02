import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/utils.dart';
import '../desktop/overview.dart';
import '../desktop/thingstodo/date.dart';
import '../desktop/thingstodo.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose of the TabController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: deviceHeight * 0.12, // Adjust the height of the AppBar
        // titleSpacing: deviceWidth * 0.05, // Adjust the spacing of the title
        title: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: colorButtonBorder, width: 1),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/main_logo.png',
                  width: deviceWidth * 0.04,
                  height: deviceHeight * 0.1,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: deviceWidth * 0.2,
                      height: deviceHeight * 0.08,
                      decoration: BoxDecoration(
                        color: colorWhite,
                        border: Border.all(
                          color: colorButtonBorder,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(deviceWidth * 0.08),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(
                            color: colorHotelText,
                            fontSize: 14,
                          ),
                          hintText: "Search now...",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 8,
                          ),
                          prefixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(Icons.search, color: colorHotelText),
                          ),
                          isDense: true,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: deviceWidth * 0.01,
                      ),
                      height: deviceHeight * 0.07,
                      width: 0,
                      decoration: BoxDecoration(
                        border: Border.all(color: colorButtonBorder, width: 1),
                      ),
                    ),
                    Container(
                      width: deviceHeight * 0.08,
                      height: deviceHeight * 0.08,
                      decoration: BoxDecoration(
                        border: Border.all(color: colorButtonBorder, width: 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: deviceWidth * 0.01,
                      ),
                      height: deviceHeight * 0.07,
                      width: 0,
                      decoration: BoxDecoration(
                        border: Border.all(color: colorButtonBorder, width: 1),
                      ),
                    ),
                    Container(
                      width: deviceWidth * 0.1,
                      height: deviceHeight * 0.08,
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: colorButtonBorder),
                        borderRadius: BorderRadius.circular(deviceWidth * 0.08),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/coins-swap-02.svg',
                            width: 16,
                            height: 16,
                          ),
                          const Text(
                            "USD",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          Icon(Icons.expand_more, size: 20),
                        ],
                      ),
                    ),
                    Container(
                      width: deviceWidth * 0.08,
                      height: deviceHeight * 0.08,
                      margin: EdgeInsets.only(left: 14),
                      decoration: BoxDecoration(
                        color: colorPrimary,
                        border: Border.all(width: 1, color: colorPrimary),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: const Text(
                          "Sign In",
                          style: TextStyle(color: colorWhite, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: false,
          labelColor: colorRed,
          unselectedLabelColor: colorHotelText,
          indicatorColor: colorRed,
          tabAlignment: TabAlignment.fill,
          tabs: [
            Tab(icon: Icon(Icons.space_dashboard_outlined), text: 'Overview'),
            Tab(icon: Icon(Icons.list), text: 'Things To Do'),
            Tab(icon: Icon(Icons.coffee), text: 'Restaurant'),
            Tab(
              icon: Icon(Icons.directions_car_filled_outlined),
              text: 'Car Rental',
            ),
            Tab(icon: Icon(Icons.directions_boat_outlined), text: 'Cruise'),
            Tab(icon: Icon(Icons.directions_car_filled_outlined), text: 'Taxi'),
            Tab(icon: Icon(Icons.flight), text: 'Flight'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Overview()),
          Center(child: Thingstodo()),
          Center(
            // child: Text(
            //   'Restaurant1',
            //   style: TextStyle(fontSize: 14, color: colorTextCommonDark),
            // ),
            child: CompactDatePickerDemo(),
          ),
          Center(
            child: Text(
              'Car Rental1',
              style: TextStyle(fontSize: 14, color: colorTextCommonDark),
            ),
          ),
          Center(
            child: Text(
              'Cruise1',
              style: TextStyle(fontSize: 14, color: colorTextCommonDark),
            ),
          ),
          Center(
            child: Text(
              'Taxi1',
              style: TextStyle(fontSize: 14, color: colorTextCommonDark),
            ),
          ),
          Center(
            child: Text(
              'Flight1',
              style: TextStyle(fontSize: 14, color: colorTextCommonDark),
            ),
          ),
        ],
      ),
    );
  }
}
