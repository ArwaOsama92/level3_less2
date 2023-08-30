import 'package:flutter/material.dart';


// ignore: constant_identifier_names
const DecorationTextField = InputDecoration(
                  hintText: "Enter Your Email : ",
                  // To delete borders
               enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide.none,
               ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  // fillColor: Colors.red,
                  filled: true,
                  contentPadding:  EdgeInsets.all(8),
                );

 