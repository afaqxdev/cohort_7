// providers/sign_up_provider.dart
import 'package:firebase_setup/services/firebase_services.dart';
import 'package:flutter/material.dart';

class SignUpProvider extends ChangeNotifier {
  // Controllers
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  FirebaseServices firebaseServices = FirebaseServices();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  bool get obscurePassword => _obscurePassword;
  bool get obscureConfirmPassword => _obscureConfirmPassword;

  void togglePasswordVisibility() {
    _obscurePassword = !_obscurePassword;
    notifyListeners();
  }

  void toggleConfirmPasswordVisibility() {
    _obscureConfirmPassword = !_obscureConfirmPassword;
    notifyListeners();
  }

  // Validation
  String? validateName(String? value) {
    if (value == null || value.isEmpty) return "Name is required";
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return "Email is required";
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!regex.hasMatch(value)) return "Enter a valid email";
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return "Password is required";
    if (value.length < 6) return "Min 6 characters required";
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) return "Confirm your password";
    if (value != passwordController.text) return "Passwords don’t match";
    return null;
  }

  bool validateForm(GlobalKey<FormState> formKey) {
    return formKey.currentState?.validate() ?? false;
  }

  Future<void> signUpUser() async {
    firebaseServices.signUP(
      email: emailController.text,
      password: passwordController.text,
      data: {
        'name': nameController.text,
        'email': emailController.text,
        'createdAT': DateTime.now(),
      },
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
