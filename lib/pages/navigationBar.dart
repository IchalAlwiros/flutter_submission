import 'package:flutter/material.dart';
import 'package:flutter_submission/pages/homePage.dart';
import 'package:flutter_submission/pages/myAccountPage.dart';

class FloatingBottomNavbar extends StatefulWidget {
  const FloatingBottomNavbar({Key? key}) : super(key: key);

  @override
  _FloatingBottomNavbarState createState() => _FloatingBottomNavbarState();
}

class _FloatingBottomNavbarState extends State<FloatingBottomNavbar>
    with TickerProviderStateMixin {
  TabController? _controller;
  int selectIcon = 0;

  void changeWidget(int index) {
    setState(() {
      selectIcon = index;
    });
  }

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Stack(
        
        children: [
          SafeArea(
            child: TabBarView(
              controller: _controller,
              children: [
                HomePage(),
                MyAccountPage(),
                // Text(
                //   'Contact',
                //   style: TextStyle(fontSize: 20, color: Colors.black),
                // ),
                // Text(
                //   'Hore',
                //   style: TextStyle(fontSize: 20, color: Colors.black),
                // ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(30),
              height: 60,
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
              child: TabBar(
                controller: _controller,
                indicatorColor: Theme.of(context).iconTheme.color,
                indicatorSize: TabBarIndicatorSize.label,
                //automaticIndicatorColorAdjustment: true,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home,color: Theme.of(context).iconTheme.color,),
                  ),
                  Tab(
                    icon: CircleAvatar(
                      radius: 15.0,
                      backgroundImage: AssetImage('assets/Pas Foto.png'),
                    ),
                  ),
                  // Tab(
                  //   icon: Icon(Icons.contact_page),
                  // ),
                  // Tab(
                  //   icon: Icon(Icons.contact_page),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
