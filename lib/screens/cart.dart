import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Your cart',
          style: GoogleFonts.overpass(
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 9, 15, 71),
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '2 Items in your cart',
                    style: GoogleFonts.overpass(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(115, 9, 15, 71),
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
                          Icons.add,
                          color: Color.fromARGB(255, 0, 165, 155),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Add to cart',
                          style: GoogleFonts.overpass(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Color.fromARGB(255, 0, 165, 155),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const CartItem(
                imageUrl: 'assets/images/cart_item1.png',
                title: 'Sugar free gold',
                description: 'bottle of 500 pellets',
                price: 25000,
              ),
              const SizedBox(height: 16),
              const CartItem(
                imageUrl: 'assets/images/cart_item2.png',
                title: 'Sugar free gold',
                description: 'bottle of 500 pellets',
                price: 18000,
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color.fromARGB(26, 0, 0, 0),
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.local_offer_outlined,
                          size: 16,
                          color: Color.fromARGB(255, 9, 15, 71),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '1 Coupon applied',
                          style: GoogleFonts.overpass(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 0, 165, 155),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/ic_close.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Payment Summary',
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 9, 15, 71),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              paymentSummary(),
              const SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 15, 55, 89),
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize:
                      const Size(320, 40),
                ),
                child: Text(
                  'Place Order @ Rp 185.000',
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

  Widget paymentSummary() {
    return Column(
      children: [
        paymentRow('Order Total', 'Rp 228.800'),
        paymentRow('Items Discount', '- Rp 28.800'),
        paymentRow('Coupon Discount', '- Rp 15.800'),
        paymentRow('Shipping', 'Free'),
        const Divider(
          color: Color.fromARGB(20, 0, 0, 0),
          thickness: 1,
          height: 20,
        ),
        paymentRow(
          'Total',
          'Rp 185.000',
          isBold: true,
          fontSize: 16,
        ),
      ],
    );
  }

  Widget paymentRow(String label, String value, {bool isBold = false, double fontSize = 14}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.overpass(
              textStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: isBold ? FontWeight.bold : FontWeight.w400,
                color: isBold ? const Color.fromARGB(255, 9, 15, 71) : const Color.fromARGB(115, 9, 15, 71),
              ),
            ),
          ),
          Text(
            value,
            style: GoogleFonts.overpass(
              textStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: isBold ? FontWeight.bold : FontWeight.w400,
                color: const Color.fromARGB(255, 9, 15, 71),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final int price;

  const CartItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              imageUrl,
              width: 66,
              height: 76,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.overpass(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 9, 15, 71),
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    description,
                    style: GoogleFonts.overpass(
                      textStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(115, 9, 15, 71),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Rp ${price.toString()}',
                    style: GoogleFonts.overpass(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 15, 71),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/ic_close.png',
                    width: 20,
                    height: 20,
                  ),
                ),
                const SizedBox(height: 8),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/bg_icon.png',
                      width: 76,
                      height: 26,
                      fit: BoxFit.cover,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.remove_circle_rounded,
                            size: 30,
                            color: Color.fromARGB(255, 0, 165, 155),
                          ),
                          onPressed: () {},
                          iconSize: 30,
                        ),
                        const Text(
                          '1',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.add_circle_rounded,
                            size: 30,
                            color: Color.fromARGB(255, 15, 55, 89),
                          ),
                          onPressed: () {},
                          iconSize: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const Divider(
          color: Color.fromARGB(15, 0, 0, 0),
          thickness: 1,
          height: 20,
        ),
      ],
    );
  }
}
