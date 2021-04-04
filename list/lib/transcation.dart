import 'package:flutter/foundation.dart';

class Transcation{
  final String id;
  final double amount;
  final String title;
  DateTime date;

  Transcation({
           @required this.id,
           @required this.amount,
          @required  this.date,
          @required  this.title
  });
}