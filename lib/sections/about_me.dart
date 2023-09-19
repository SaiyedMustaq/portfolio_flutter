import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import '../constanat.dart';

import '../utils.dart';

class MoreAboutMe extends StatelessWidget {
  const MoreAboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widegtSize = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(thirdbackground),
        fit: BoxFit.fill,
      )),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Utils.isMobile(context) ? 20 : 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Utils.isMobile(context)
                ? const SizedBox(height: 60.0)
                : SizedBox(height: widegtSize.height * .10),
            Utils.isMobile(context)
                ? const SizedBox(height: 60)
                : SizedBox(height: widegtSize.height * .10),
            Row(
              children: [
                Expanded(
                  child: FlipCard(
                    back: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10.0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 30),
                            child: Text(
                              'Education',
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.calendar_month),
                              Text('2016-2018',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.justify),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.school_outlined),
                              Flexible(
                                child: Text(
                                    'MSC(IT) FACULTY OF COMPUTER APPLICATIONS & INFORMATION TECHNOLOGY',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic),
                                    textAlign: TextAlign.justify),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Icon(Icons.calendar_month),
                              Flexible(
                                child: Text('2013-2016',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.justify),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.school_outlined),
                              Flexible(
                                child: Text(
                                    'BCA PD PANDYA INSTITUTE OF COMPUTER APPLICATION',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.justify),
                              ),
                            ],
                          ),
                          Text('',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.justify)
                        ],
                      ),
                    ),
                    front: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10.0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 30),
                            child: Text(
                              'More About Me',
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Text(
                              'Self-motivated Developer adds high level of experience over more than 4+ years collaborating and working on multiple mobile app projects. Passionate, hardworking coder with penchant for developing customized interfaces that factor in unique demands for accessibility, reachability and security. Organized approach to meeting multiple, concurrent deadlines. Pulls from active knowledge of current technology landscape to promote best practices in web design.',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.italic,
                                  letterSpacing: 1.2),
                              textAlign: TextAlign.justify),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text('',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.justify),
                          ),
                          Text('Click to show eduction',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.justify)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Image.asset(userImageMobile, height: 300, width: 300),
                )
              ],
            ),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
