// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_week_08/home_screen.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiClass {
  final String registerUrl = 'https://reqres.in/api/register';
  final String productsUrl = 'https://fakestoreapi.com/products';

  /// Register user using POST
  Future<void> registerUser(
    String email,
    String password,
    BuildContext context,
  ) async {
    try {
      final response = await http.post(
        Uri.parse(registerUrl),
        body: {"email": email, "password": password},
        // headers: {'x-api-key': 'reqres-free-v1'},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        await storeToken(data['token']);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("User registered successfully")),
        );
      } else {
        final error = jsonDecode(response.body);
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Error: ${error['error']}")));
      }
    } catch (e) {
      print("Exception: $e");
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("An error occurred: $e")));
    }
  }

  /// Store token to SharedPreferences
  Future<void> storeToken(String token) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('token', token);
  }

  /// GET method to fetch products
  Future<List<Map<String, dynamic>>> getProducts() async {
    try {
      final response = await http.get(Uri.parse(productsUrl));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return List<Map<String, dynamic>>.from(data);
      } else {
        print("Failed to load products: ${response.statusCode}");
        return [];
      }
    } catch (e) {
      print("Error fetching products: $e");
      return [];
    }
  }
}
