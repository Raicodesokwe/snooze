import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snoozeupdemo/utils/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
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
                            'Alarm',
                            style: TextStyle(color: Colors.white70),
                          ),
                          Text(
                            '0x74B...sfBe',
                            style: TextStyle(color: Colors.white, fontSize: 17),
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
                    height: size.height * 0.02,
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
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.5,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Bedtime',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'On Track',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '6',
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    'hrs',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    '30',
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    'mins',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: AppColor.purpleColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    'Set Bedtime',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: size.width * 0.3,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.lightbulb_outline_sharp,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '82%',
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'of your goal',
                                        style: TextStyle(fontSize: 11),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text(
                                'Sleep goal',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              SizedBox(
                                  width: size.width * 0.17,
                                  child: Text(
                                    'This can be set under your bedtime goal',
                                    style: TextStyle(fontSize: 11),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                            color: Color(0xFFE354FF).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(7, 7), color: Colors.white24)
                            ]),
                        child: Center(
                          child: Text(
                            'Add new',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 50,
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                            color: Color(0xFFE354FF).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(7, 7), color: Colors.white24)
                            ]),
                        child: Center(
                          child: Text(
                            'Edit',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF313156)),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Morning Alarm',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                SizedBox(
                                  height: size.height * 0.015,
                                ),
                                Text(
                                  '5:30',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25),
                                ),
                              ],
                            ),
                            Spacer(),
                            CupertinoSwitch(
                              value: true,
                              onChanged: (value) {},
                              activeColor: Color(0xFFE354FF).withOpacity(0.8),
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.025,
                        ),
                        Row(
                          children: [
                            Text(
                              'Mon, Tue, Wed, Thur, Fri',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 11),
                            ),
                            Spacer(),
                            Text(
                              '12h 28m',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 11),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
