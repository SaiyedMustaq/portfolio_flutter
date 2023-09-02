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
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 50),
                          child: Text(
                            'More About Me',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Text(
                            'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis nesciunt excepturi quos obcaecati incidunt voluptatem ipsam sunt ipsum, autem deleniti cupiditate molestias quis unde quae totam porro dicta iure animi inventore, veniam hic! Omnis nulla, delectus a voluptatibus',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.justify),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                              '8876876sLorem ipsum dolor sit amet consectetur, adipisicing elit. Consequuntur nostrum dolor minus, libero delectus praesentium perferendis',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.justify),
                        ),
                        Text(
                            'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero, consequuntur labore? Ea totam voluptas amet!',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.justify)
                      ],
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
