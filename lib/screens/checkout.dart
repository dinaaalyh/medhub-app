import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Checkout',
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
                  Text(
                    'TOTAL',
                    style: GoogleFonts.overpass(
                      textStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(115, 9, 15, 71),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Rp 185.000',
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
              Text(
                'Delivery Address',
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 9, 15, 71),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color.fromARGB(26, 0, 0, 0),
                  ),
                ),
                padding: const EdgeInsets.all(12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Radio(
                      value: true,
                      groupValue: true,
                      onChanged: (value) {},
                      fillColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 0, 165, 155)),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Home',
                          style: GoogleFonts.overpass(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 9, 15, 71),
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '(031) 555-024\nJl. Rajawali No. 02, Surabaya',
                          style: GoogleFonts.overpass(
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 9, 15, 71),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.edit_outlined, size: 20,),
                      onPressed: () {},
                      color: const Color.fromARGB(255, 9, 15, 71),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color.fromARGB(26, 0, 0, 0),
                  ),
                ),
                padding: const EdgeInsets.all(12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Radio(
                      value: false,
                      groupValue: true,
                      onChanged: (value) {},
                      fillColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 0, 165, 155)),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Office',
                          style: GoogleFonts.overpass(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 9, 15, 71),
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '(031) 555-024\nJl. Gajah Mada No. 05, Sidoarjo',
                          style: GoogleFonts.overpass(
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 9, 15, 71),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.edit_outlined, size: 20,),
                      onPressed: () {},
                      color: const Color.fromARGB(255, 9, 15, 71),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 0, 165, 155),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Add Address',
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
              const SizedBox(height: 10),
              Text(
                'Payment Method',
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 9, 15, 71),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color.fromARGB(26, 0, 0, 0),
                  ),
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    _buildPaymentOption('OVO', 'assets/images/ovo.png', true),
                    const SizedBox(height: 10),
                    _buildPaymentOption(
                        'Dana', 'assets/images/dana.png', false),
                    const SizedBox(height: 10),
                    _buildPaymentOption(
                        'ShopeePay', 'assets/images/syopi.png', false),
                    const SizedBox(height: 10),
                    _buildPaymentOption(
                        'GoPay', 'assets/images/gopay.png', false),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/success');
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
                  'Pay Now Rp 185.000',
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

  Widget _buildPaymentOption(String title, String assetPath, bool selected) {
    return Row(
      children: [
        Image.asset(assetPath, width: 40, height: 40),
        const SizedBox(width: 8),
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
        const Spacer(),
        Radio(
          value: selected,
          groupValue: true,
          onChanged: (value) {},
          fillColor:
              WidgetStateProperty.all(const Color.fromARGB(255, 0, 165, 155)),
        ),
      ],
    );
  }
}
