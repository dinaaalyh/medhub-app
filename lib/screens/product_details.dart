import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(''),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(FeatherIcons.shoppingBag, size: 20),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 5, left: 22, right: 22, bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sugar Free Gold Low Calories',
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 9, 15, 71),
                  ),
                ),
              ),
              const SizedBox(height: 3),
              Text(
                'Etiam mollis metus non purus',
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(115, 9, 15, 71),
                  ),
                ),
              ),
              const SizedBox(height: 1),
              Image.asset(
                'assets/images/item_detail.png',
                height: 200,
              ),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildDot(isActive: true),
                    _buildDot(),
                    _buildDot(),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Rp 56.000',
                    style: GoogleFonts.overpass(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 15, 71),
                      ),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(0, 0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add_box_outlined,
                          color: Color.fromARGB(255, 0, 165, 155),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Add to cart',
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
                  ),
                ],
              ),
              const SizedBox(height: 3),
              Text(
                'Etiam mollis',
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(115, 9, 15, 71),
                  ),
                ),
              ),
              const SizedBox(height: 3),
              const Divider(
                color: Color.fromARGB(25, 0, 0, 0),
                thickness: 1,
              ),
              const SizedBox(height: 5),
              Text(
                'Package Size',
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 9, 15, 71),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildPackageOption(
                    context,
                    price: 'Rp 252.000',
                    quantity: '500 pellets',
                    isSelected: true,
                  ),
                  _buildPackageOption(
                    context,
                    price: 'Rp 100.000',
                    quantity: '110 pellets',
                  ),
                  _buildPackageOption(
                    context,
                    price: 'Rp 160.000',
                    quantity: '300 pellets',
                  ),
                ],
              ),
              const SizedBox(height: 13),
              Text(
                'Product Details',
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 9, 15, 71),
                  ),
                ),
              ),
              const SizedBox(height: 3),
              Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(115, 9, 15, 71),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Rating and Reviews',
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 9, 15, 71),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              _buildRatingAndReviews(),
              const SizedBox(height: 18),
              Row(
                children: [
                  Text(
                    'Lorem Hoffman',
                    style: GoogleFonts.overpass(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 9, 15, 71),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '05 August 2024',
                    style: GoogleFonts.overpass(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(115, 9, 15, 71),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 13),
                  const SizedBox(width: 4),
                  Text(
                    '4.4',
                    style: GoogleFonts.overpass(
                      textStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(115, 9, 15, 71),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 3),
              Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas',
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(115, 9, 15, 71),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 15, 55, 89),
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size(320, 40),
                ),
                child: Text(
                  'GO TO CART',
                  style: GoogleFonts.overpass(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDot({bool isActive = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: 3,
      width: 3,
      decoration: BoxDecoration(
        color: isActive ? Colors.teal : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildPackageOption(BuildContext context,
      {required String price,
      required String quantity,
      bool isSelected = false}) {
    return Container(
      width: 100,
      height: 60,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: isSelected
            ? const Color.fromARGB(255, 245, 245, 245)
            : const Color.fromARGB(15, 0, 0, 0),
        borderRadius: BorderRadius.circular(8.0),
        border: isSelected
            ? Border.all(
                color: const Color.fromARGB(255, 0, 165, 155),
                width: 1.0,
              )
            : Border.all(color: Colors.transparent),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            price,
            style: GoogleFonts.overpass(
              textStyle: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 9, 15, 71),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            quantity,
            style: GoogleFonts.overpass(
              textStyle: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(115, 9, 15, 71),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRatingAndReviews() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '4.4',
                  style: GoogleFonts.overpass(
                    textStyle: const TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                const Icon(Icons.star, color: Colors.amber, size: 26),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              '923 Ratings\nand 257 Reviews',
              style: GoogleFonts.overpass(
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(115, 9, 15, 71),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 20),
        Container(
          width: 1,
          height: 69,
          color: const Color.fromARGB(25, 0, 0, 0),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            children: [
              _buildRatingBar(5, 0.67),
              _buildRatingBar(4, 0.20),
              _buildRatingBar(3, 0.07),
              _buildRatingBar(2, 0.00),
              _buildRatingBar(1, 0.02),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRatingBar(int stars, double ratio) {
    return Row(
      children: [
        Text(
          stars.toString(),
          style: GoogleFonts.overpass(
            textStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(115, 9, 15, 71),
            ),
          ),
        ),
        const SizedBox(width: 4),
        const Icon(Icons.star, color: Colors.amber, size: 14),
        const SizedBox(width: 4),
        Expanded(
          child: LinearProgressIndicator(
            value: ratio,
            color: Colors.teal,
            backgroundColor: const Color.fromARGB(25, 0, 0, 0),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '${(ratio * 100).toInt()}%',
          style: GoogleFonts.overpass(
            textStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(115, 9, 15, 71),
            ),
          ),
        ),
      ],
    );
  }
}
