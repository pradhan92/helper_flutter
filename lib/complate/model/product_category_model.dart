// To parse this JSON data, do
//
//     final productCategoryModel = productCategoryModelFromJson(jsonString);

import 'dart:convert';

List<String> productCategoryModelFromJson(String str) =>
    List<String>.from(json.decode(str).map((x) => x));

String productCategoryModelToJson(List<String> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x)));
