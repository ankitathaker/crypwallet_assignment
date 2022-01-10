import 'package:crypwallet/colors.dart';
import 'package:crypwallet/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  static const List<Widget> _homePageWidgets = <Widget>[
    DashboardPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 0.0,
            horizontal: 8.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                child: SvgPicture.asset(
                  "images/hamburger.svg",
                  color: fabColor,
                ),
                minRadius: 15,
                maxRadius: 15,
                backgroundColor: Colors.white,
                foregroundColor: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Menu",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 0.0,
              horizontal: 8.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: SvgPicture.asset(
                    "images/notification.svg",
                    color: fabColor,
                  ),
                  minRadius: 15,
                  maxRadius: 15,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Notification",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: _homePageWidgets[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Scan QR',
        child: const Icon(Icons.qr_code_scanner),
        elevation: 1.0,
        backgroundColor: fabColor,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        elevation: 0.0,
        child: BottomNavigationBar(
          elevation: 0.0,
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: TextStyle(
            color: bottomNavUnSelectedLabelColor,
          ),
          selectedLabelStyle: TextStyle(
            color: bottomNavSelectedLabelColor,
          ),
          unselectedIconTheme: IconThemeData(
            color: bottomNavUnSelectedIconColor,
          ),
          selectedIconTheme: IconThemeData(
            color: bottomNavSelectedIconColor,
          ),
          backgroundColor: appPrimaryColor,
          /* onTap: (tapIndex) {
            setState(() {
              _currentIndex = tapIndex;
            });
          },*/
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.pie_chart,
              ),
              label: "Portfolio",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet_outlined,
              ),
              label: "Wallet",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.price_change_outlined,
              ),
              label: "Prices",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.perm_device_information_outlined,
              ),
              label: "News",
            ),
          ],
        ),
      ),
    );
  }
}
