import 'package:digitalart/res/dimension.dart';
import 'package:flutter/material.dart';

import '../../res/color_resource.dart';
import 'home.dart';
import 'details_page.dart';
import 'profile/profile_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  static String name = "/landing-page";

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
    const UserProfilePage(),
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
        backgroundColor: ColorResource.cardColor1,
        title: const Text(
          'Digital Art Network',
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(
            color: Color(0xff2233ee),
          )),
        ),
        child: BottomNavigationBar(
          backgroundColor: ColorResource.cardColor1,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
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
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 8),
                        width: 95.0,
                        height: 95.0,
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
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Text(
                      'mo\' feel',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
                    child: Text(
                      '@mofeel',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(Dimension.marginSize),
                  width: double.infinity,
                  color: ColorResource.unSelectedTextColor,
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
