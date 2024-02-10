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
import '/auth/firebase_auth/auth_util.dart';

double? timeCondition2(
  double hour,
  double minutes,
  String? ampm,
  double? parkingTimeInHours,
) {
  double parkingRate = 0.0;

  if (ampm == 'AM') {
    if (hour >= 5 && hour < 10) {
      parkingRate = 10.0;
    } else if (hour >= 10 && hour < 12) {
      parkingRate = 20.0;
    } else {
      parkingRate = 8.0;
    }
  } else {
    if (hour == 12) {
      hour = 0;
    }
    hour += 12;
    if (hour >= 10 && hour < 15) {
      parkingRate = 20.0;
    } else if (hour >= 15 && hour < 22) {
      parkingRate = 30.0;
    } else {
      parkingRate = 8.0;
    }
  }

  double totalCost = 0.0;

  // Check if parking time exceeds the current rate period
  if (parkingTimeInHours! > 0) {
    double remainingTime = parkingTimeInHours;

    // Calculate cost for the current rate period
    totalCost += parkingRate * math.min(remainingTime, 1.0);

    // Move to the next rate period
    remainingTime -= 1.0;

    // Continue calculating cost for subsequent rate periods
    while (remainingTime > 0) {
      // Move to the next time period
      if (ampm == 'AM') {
        hour = (hour + 1) % 24;
      } else {
        hour = (hour + 1) % 12;
        if (hour == 0) {
          ampm = 'AM';
        }
      }

      // Determine parking rate for the current time period
      if (ampm == 'AM') {
        if (hour >= 5 && hour < 10) {
          parkingRate = 10.0;
        } else if (hour >= 10 && hour < 12) {
          parkingRate = 20.0;
        } else {
          parkingRate = 8.0;
        }
      } else {
        if (hour == 12) {
          hour = 0;
        }
        hour += 12;
        if (hour >= 10 && hour < 15) {
          parkingRate = 20.0;
        } else if (hour >= 15 && hour < 22) {
          parkingRate = 30.0;
        } else {
          parkingRate = 8.0;
        }
      }

      // Calculate cost for the current rate period
      totalCost += parkingRate * math.min(remainingTime, 1.0);

      // Move to the next rate period
      remainingTime -= 1.0;
    }
  }

  return totalCost;
}

DateTime convertStringtoTime(
  double hours,
  double minutes,
  String ampm,
) {
  // convert into date time and return it consider date of today
  final now = DateTime.now();
  final time = DateFormat.jm().parse('$hours:$minutes $ampm');
  final dateTime =
      DateTime(now.year, now.month, now.day, time.hour, time.minute);
  return dateTime;
}

bool? lessThan30Minutes(
  DateTime bookingTime,
  DateTime? currentTime,
) {
  // if booking time is less than 30 minutes then true else false
  if (currentTime == null) {
    currentTime = DateTime.now();
  }
  Duration difference = bookingTime.difference(currentTime);
  return difference.inMinutes < 30;
}
