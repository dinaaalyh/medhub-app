import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medhub_app/screens/home.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  int _selectedIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    }
    if (index == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyProfile()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'My Profile',
            style: GoogleFonts.overpass(
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 9, 15, 71),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 9, 15, 71)),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/myprofile.png',
                  height: 82,
                  width: 82,
                ),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Lorem Ipsum',
                      style: GoogleFonts.overpass(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 9, 28, 63),
                        ),
                      ),
                    ),
                    Text(
                      'Welcome to MedHub',
                      style: GoogleFonts.overpass(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(115, 9, 28, 63),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            _buildMenuItem(
                'assets/images/ic_pa.png', 'Private Account', context),
            _buildMenuItem(
                'assets/images/ic_consults.png', 'My Consults', context),
            _buildMenuItem(
                'assets/images/ic_myorders.png', 'My orders', context),
            _buildMenuItem('assets/images/ic_billing.png', 'Billing', context),
            _buildMenuItem('assets/images/ic_faq.png', 'Faq', context),
            _buildMenuItem(
                'assets/images/ic_settings.png', 'Settings', context),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.home,
              size: 20,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.bell,
              size: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              alignment:
                  Alignment.center,
              children: [
                Image.asset(
                  'assets/images/bg_bnb.png',
                  height: 38,
                  width: 38,
                ),
                const Icon(
                  Icons.add_box_outlined,
                  size: 22,
                  color: Colors.white,
                ),
              ],
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.shoppingBag,
              size: 20,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.user,
              size: 20,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 0, 165, 155),
        unselectedItemColor: const Color.fromARGB(115, 9, 15, 71),
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 10,
        selectedIconTheme: const IconThemeData(size: 28),
        unselectedIconTheme: const IconThemeData(size: 24),
      ),
    );
  }

  Widget _buildMenuItem(String imagePath, String title, BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(
            imagePath,
            height: 24,
            width: 24,
            color: const Color.fromARGB(255, 9, 28, 63),
          ),
          title: Text(
            title,
            style: GoogleFonts.overpass(
              textStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(191, 9, 28, 63),
              ),
            ),
          ),
          trailing: const Icon(
            Icons.chevron_right,
            color: Color.fromARGB(255, 9, 28, 63),
            size: 16,
          ),
          onTap: () {
          },
        ),
        const Padding(
          padding: EdgeInsets.only(left: 56.0),
          child: Divider(
            color: Color.fromARGB(20, 9, 28, 63),
            thickness: 1,
            height: 1,
          ),
        ),
      ],
    );
  }
}
