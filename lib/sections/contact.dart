import 'package:flutter/material.dart';

import '../constanat.dart';
import '../utils.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Utils.mdqw(context),
      padding: EdgeInsets.only(bottom: 100, top: 100),
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(secondbackground),
        fit: BoxFit.fill,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Get In Touch With Me',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: Utils.isMobile(context)
                ? Utils.mdqw(context)
                : Utils.mdqw(context) / 3,
            child: DecoratedBox(
              decoration: BoxDecoration(
                boxShadow: const [],
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Text("Name"),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: TextFormField(),
                      ))
                    ]),
                    Row(children: [
                      Text("Email"),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: TextFormField(),
                      ))
                    ]),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Text('Message'),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: TextFormField(),
                          ))
                        ]),
                    const SizedBox(height: 15.0),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Send',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
