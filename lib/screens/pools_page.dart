import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snoozeupdemo/models/challenge_model.dart';
import 'package:snoozeupdemo/models/pools_model.dart';
import 'package:snoozeupdemo/widgets/line_chart.dart';

class PoolsPage extends StatelessWidget {
  const PoolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
              top: -size.height * 0.05,
              right: -86,
              child: Container(
                height: 166,
                width: 166,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFE354FF).withOpacity(0.8)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 170, sigmaY: 170),
                  child: Container(
                    height: 166,
                    width: 166,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.transparent),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    Row(
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                shape: BoxShape.circle),
                            child: SvgPicture.asset(
                              'assets/images/face.svg',
                            )),
                        SizedBox(
                          width: 7,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pools',
                              style: TextStyle(color: Colors.white70),
                            ),
                            Text(
                              '0x74B...sfBe',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Text(
                                '39',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      height: 10,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            height: 10,
                            width: size.width * 0.3,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                '23%',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Current pools',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SizedBox(
                      height: size.height * 0.18,
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Wrap(
                          spacing: 10,
                          children: List.generate(poolsList.length, (index) {
                            final templateItem = poolsList[index];
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 23,
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        height: size.height * 0.15,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE354FF),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              templateItem.number,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              templateItem.label,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: -15,
                                        left: 45,
                                        child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.orangeAccent,
                                                    width: 4),
                                                color: Colors.orange),
                                            child: templateItem.icon),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Next month pool',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.18,
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Wrap(
                          spacing: 10,
                          children: List.generate(poolsList.length, (index) {
                            final templateItem = poolsList[index];
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 23,
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        height: size.height * 0.15,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.white24,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              templateItem.number,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              templateItem.label,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: -15,
                                        left: 45,
                                        child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.orangeAccent,
                                                    width: 4),
                                                color: Colors.orange),
                                            child: templateItem.icon),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
