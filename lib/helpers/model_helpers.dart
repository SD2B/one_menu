import 'package:json_annotation/json_annotation.dart';

class ListStringConverter implements JsonConverter<List<String>, String> {
  const ListStringConverter();

  @override
  List<String> fromJson(String json) {
    // Convert the JSON string back to a list of strings
    return json.split(',');
  }

  @override
  String toJson(List<String> list) {
    // Convert the list of strings to a single string
    return list.join(',');
  }
}


class DateTimeIsoConverter implements JsonConverter<DateTime?, String?> {
  const DateTimeIsoConverter();

  @override
  DateTime? fromJson(String? json) {
    // Convert ISO string back to DateTime
    return json == null ? null : DateTime.parse(json);
  }

  @override
  String? toJson(DateTime? date) {
    // Convert DateTime to ISO string
    return date?.toIso8601String();
  }
}

class DoubleStringConverter implements JsonConverter<dynamic, String> {
  final bool isDouble;

  const DoubleStringConverter({this.isDouble = true});

  @override
  dynamic fromJson(String json) {
    // Convert the string back to a double if isDouble is true
    return isDouble ? double.tryParse(json) : json;
  }

  @override
  String toJson(dynamic value) {
    // Convert the double to a string if isDouble is true
    return isDouble && value is double ? value.toString() : value.toString();
  }
}