import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medhub_app/screens/category.dart';
import 'package:medhub_app/screens/my_profile.dart';
import 'package:medhub_app/widgets/brands.dart';
import 'package:medhub_app/widgets/category_item.dart';
import 'package:medhub_app/widgets/deals_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 251, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/background.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 48, left: 20, right: 20, bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/profile.png',
                            height: 52,
                            width: 52,
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(FeatherIcons.bell,
                                color: Colors.white),
                            iconSize: 20,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(FeatherIcons.shoppingBag,
                                color: Colors.white),
                            iconSize: 20,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Hi, Lorem',
                                style: GoogleFonts.overpass(
                                  textStyle: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 2),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Welcome to MedHub',
                                style: GoogleFonts.overpass(
                                  textStyle: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 18),
                      Container(
                        width: 314,
                        height: 48,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(56),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              FeatherIcons.search,
                              color: Color.fromARGB(115, 9, 15, 71),
                              size: 20,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText:
                                      'Search Medicine & Healthcare products',
                                  hintStyle: GoogleFonts.overpass(
                                    textStyle: const TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(115, 9, 15, 71),
                                    ),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                ),
                                style: GoogleFonts.overpass(
                                  textStyle: const TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 9, 15, 71),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Top Categories',
                          style: GoogleFonts.overpass(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 9, 15, 71),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 0, right: 0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CategoryItem(
                                icon: Image.asset(
                                  'assets/images/dental.png',
                                  width: 24,
                                  height: 24,
                                ),
                                label: 'Dental',
                                startColor:
                                    const Color.fromARGB(255, 255, 149, 152),
                                endColor:
                                    const Color.fromARGB(255, 255, 112, 167),
                              ),
                              CategoryItem(
                                icon: Image.asset(
                                  'assets/images/wellness.png',
                                  width: 24,
                                  height: 24,
                                ),
                                label: 'Wellness',
                                startColor:
                                    const Color.fromARGB(255, 25, 229, 165),
                                endColor:
                                    const Color.fromARGB(255, 21, 189, 146),
                              ),
                              CategoryItem(
                                icon: Image.asset(
                                  'assets/images/homeo.png',
                                  width: 24,
                                  height: 24,
                                ),
                                label: 'Homeo',
                                startColor:
                                    const Color.fromARGB(255, 255, 192, 111),
                                endColor:
                                    const Color.fromARGB(255, 255, 121, 58),
                              ),
                              CategoryItem(
                                icon: Image.asset(
                                  'assets/images/eye_care.png',
                                  width: 24,
                                  height: 24,
                                ),
                                label: 'Eye care',
                                startColor:
                                    const Color.fromARGB(255, 77, 183, 255),
                                endColor:
                                    const Color.fromARGB(255, 62, 125, 255),
                              ),
                              CategoryItem(
                                icon: Image.asset(
                                  'assets/images/skin&hair.png',
                                  width: 24,
                                  height: 24,
                                ),
                                label: 'Skin & Hair',
                                startColor:
                                    const Color.fromARGB(255, 130, 130, 130),
                                endColor: const Color.fromARGB(255, 9, 15, 71),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Category()),
                          );
                        },
                        child: Image.asset(
                          'assets/images/banner.png',
                          width: 316,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Deals of the Day',
                            style: GoogleFonts.overpass(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 9, 15, 71),
                              ),
                            ),
                          ),
                          Text(
                            'More',
                            style: GoogleFonts.overpass(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 0, 165, 155),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 0, right: 0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              DealsItem(
                                image: 'assets/images/deals_item1.png',
                                title: 'Accu-check Active\nTest Strip',
                                price: 'Rp 112.000',
                                rating: 4.2,
                              ),
                              DealsItem(
                                image: 'assets/images/deals_item1.png',
                                title: 'Omron HEM-8712\nBP Monitor',
                                price: 'Rp 150.000',
                                rating: 4.5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Featured Brands',
                          style: GoogleFonts.overpass(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 9, 15, 71),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 0, right: 0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Brands(
                                icon: Image.asset(
                                  'assets/images/brand1.png',
                                  width: 24,
                                  height: 24,
                                ),
                                label: 'Himalaya',
                                startColor: Colors.white,
                                endColor: Colors.white,
                              ),
                              Brands(
                                icon: Image.asset(
                                  'assets/images/brand2.png',
                                  width: 24,
                                  height: 24,
                                ),
                                label: 'Accu-Chek',
                                startColor: Colors.white,
                                endColor: Colors.white,
                              ),
                              Brands(
                                icon: Image.asset(
                                  'assets/images/brand3.png',
                                  width: 24,
                                  height: 24,
                                ),
                                label: 'Vlcc',
                                startColor: Colors.white,
                                endColor: Colors.white,
                              ),
                              Brands(
                                icon: Image.asset(
                                  'assets/images/brand4.png',
                                  width: 24,
                                  height: 24,
                                ),
                                label: 'Protinex',
                                startColor: Colors.white,
                                endColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
              alignment: Alignment.center,
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
}
