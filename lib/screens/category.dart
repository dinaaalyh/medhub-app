import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medhub_app/screens/product_details.dart';
import 'package:medhub_app/widgets/all_products.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Diabetes Care',
          style: GoogleFonts.overpass(
            textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 9, 15, 71)),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/banner2.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'Diabetic Diet',
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 9, 15, 71)),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildDietItem('Sugar Substitute', 'assets/images/diet1.png'),
                  _buildDietItem(
                      'Juices & Vinegars', 'assets/images/diet2.png'),
                  _buildDietItem(
                      'Vitamins Medicines', 'assets/images/diet3.png'),
                ],
              ),
              const SizedBox(height: 18),
              Text(
                'All Products',
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 9, 15, 71)),
                ),
              ),
              const SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetails(
                              ),
                            ),
                          );
                        },
                        child: const AllProducts(
                          image: 'assets/images/sale1.png',
                          title: 'Accu-Check Active\nTest Strip',
                          price: 'Rp 112.000',
                          rating: 4.2,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetails(
                              ),
                            ),
                          );
                        },
                        child: const AllProducts(
                          image: 'assets/images/sale2.png',
                          title: 'Omron HEM-8712\nBP Monitor',
                          price: 'Rp 150.000',
                          rating: 4.2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    AllProducts(
                      image: 'assets/images/product1.png',
                      title: 'Accu-Check Active\nTest Strip',
                      price: 'Rp 112.000',
                      rating: 4.2,
                    ),
                    SizedBox(width: 0),
                    AllProducts(
                      image: 'assets/images/product2.png',
                      title: 'Omron HEM-8712\nBP Monitor',
                      price: 'Rp 150.000',
                      rating: 4.2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildDietItem(String title, String imagePath) {
  return Container(
    width: 100,
    height: 160,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: const Color.fromARGB(255, 245, 247, 250),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1)),
      ],
    ),
    child: Stack(
      children: [
        Positioned(
          top: 1,
          left: 0,
          child: Image.asset(
            imagePath,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8,
          left: 4,
          right: 0,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: GoogleFonts.overpass(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 9, 15, 71),
                ),
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    ),
  );
}
