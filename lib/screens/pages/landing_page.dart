import 'package:flutter/material.dart';

import '../../res/color_resource.dart';
import 'home.dart';
import 'details_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static final List<Widget> _widgetOptions = <Widget>[
    DigitalHomePage(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => _scaffoldKey.currentState!.openDrawer(),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/face1.jpeg'),
                ),
              ),
            ),
          ),
        ),
        backgroundColor: ColorResource.primaryColor,
        title: const Text(
          'Digital Art Network',
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorResource.primaryColor,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, size: 24),
            label: 'Dan Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 24),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart, size: 24),
            label: 'Challenge',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_rounded, size: 24),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        elevation: 18,
        selectedIconTheme:
            IconThemeData(color: ColorResource.selectedTextColor),
        unselectedIconTheme:
            IconThemeData(color: ColorResource.unSelectedTextColor),
        selectedItemColor: ColorResource.selectedTextColor,
        unselectedItemColor: ColorResource.unSelectedTextColor,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: Container(
            color: ColorResource.secondaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 40.0, 0.0, 8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    child: Container(
                      width: 75.0,
                      height: 75.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('assets/images/face1.jpeg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        'mo\' feel',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: Text(
                    '@mofeel',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.grey,
                  height: 0.5,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Challenge',
                            style:
                                TextStyle(color: ColorResource.textIconColor),
                          ),
                          leading: Icon(
                            Icons.bar_chart,
                            color: ColorResource.textIconColor,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Orders/Downloads',
                            style:
                                TextStyle(color: ColorResource.textIconColor),
                          ),
                          leading: Icon(
                            Icons.download,
                            color: ColorResource.textIconColor,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Vendor Profile',
                            style:
                                TextStyle(color: ColorResource.textIconColor),
                          ),
                          leading: Icon(
                            Icons.person_pin,
                            color: ColorResource.textIconColor,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Settings',
                            style:
                                TextStyle(color: ColorResource.textIconColor),
                          ),
                          leading: Icon(
                            Icons.settings,
                            color: ColorResource.textIconColor,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Logout',
                            style:
                                TextStyle(color: ColorResource.textIconColor),
                          ),
                          leading: Icon(
                            Icons.logout,
                            color: ColorResource.textIconColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}