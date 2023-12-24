import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snoozeupdemo/widgets/nav_bar.dart';

import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Center(
              child: SvgPicture.asset(
                'assets/images/coin.svg',
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Center(
              child: Text(
                'Incentivising a healthy lifestyle',
                style: GoogleFonts.bricolageGrotesque(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFF3B8FF)),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Join a pool and get rewards for completing various challenges. Get paid in USDC, USD, ethereum, solana, Bitcoin and more ... ',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BottomNavBar()));
              },
              child: Container(
                height: 100,
                width: 100,
                child: Center(
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.arrowRight,
                        size: 30,
                        color: Color(0xFF090017),
                      ),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
