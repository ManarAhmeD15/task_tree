import 'package:flutter/material.dart';

Widget EmailCard({
  required String name,
  required String email,
  required String imageUrl,
  IconData? icon,
  String? numberOfNotification,
  bool isExist = false,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(width: 2, color: Colors.black12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: Image.network(imageUrl,
                    fit: BoxFit.cover,).image,

                  ),
                  SizedBox(width: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(name,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          )),
                      Text(email,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                ],
              ),
              isExist
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55),
                          color: Colors.indigo[700]),
                      child: Icon(Icons.check,color: Colors.white,))
                  : Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue[100]),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          numberOfNotification!,
                          style: TextStyle(color: Colors.indigo),
                        ),
                      ))
            ],
          ),
        ),
      ),
    );
