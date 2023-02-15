import 'dart:convert';
import 'package:get/get.dart';
import 'package:helper/complate/model/product_category_model.dart';
import 'package:helper/complate/model/product_model.dart';
import 'package:helper/complate/model/single_product_model.dart';
import 'package:helper/complate/screen/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RemoteService {
  static const client = http.Client;

  //fetch  product category from server
  static Future<List<String>?> fetchProductCategory() async {
    try {
      var response = await http
          .get(Uri.parse("https://fakestoreapi.com/products/categories"));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return productCategoryModelFromJson(jsonString);
      } else {
        return null;
      }
    } catch (error) {
      Get.snackbar("Error", error.toString());
    }
  }

//fetch  product from server
  static Future<List<ProductModel>?> fetchProduct() async {
    try {
      var response =
          await http.get(Uri.parse("https://fakestoreapi.com/products"));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return productModelFromJson(jsonString);
      } else {
        return null;
      }
    } catch (error) {
      Get.snackbar("Error", error.toString());
    }
  }

  //fetch  single product  from server
  static Future<SingleProductModel?> fetchSingleProduct(int id) async {
    try {
      var response =
          await http.get(Uri.parse("https://fakestoreapi.com/products/$id"));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return singleProductModelFromJson(jsonString);
      } else {
        return null;
      }
    } catch (error) {
      Get.snackbar("Error", error.toString());
    }
  }

  static Future login(Map data) async {
    try {
      var response = await http.post(
          Uri.parse("https://fakestoreapi.com/auth/login"),
          headers: {
            'Accept': 'application/json',
            'Content-type': 'application/json'
          },
          body: jsonEncode(data));
      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        var token = jsonData['token'];
        //you need to store this token in your local store and redried it
        SharedPreferences preferences = await SharedPreferences.getInstance();
        preferences.setString("token", token.toString());
        Get.offAll(() => HomeScreen());
      } else {
        Get.snackbar("error", "Invalid username and password");
      }
    } catch (error) {
      Get.snackbar("Error", error.toString());
    }
  }
}
