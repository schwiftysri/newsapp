import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

List<String> getUniqueCategories(List<String> categories) {
  // remove duplicates
  List<String> myList = categories.toSet().toList();

  // remove empty strings
  myList = myList.where((element) => element.length > 0).toList();

  // uppercase
  // myList = myList.map((str) => str.toUpperCase()).toList();

  // myList = myList
  //     .map((str) =>
  //         str.isEmpty ? str : '${str[0].toUpperCase()}${str.substring(1)}')
  //     .toList();

  // sort A-Z
  myList.sort();

  return myList;
}
