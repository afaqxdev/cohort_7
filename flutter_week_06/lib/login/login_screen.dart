import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController? emailController = TextEditingController();
  bool positive = false;

  TextEditingController? passwordController = TextEditingController();
  bool isShow = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    print("object");

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    filled: true,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    fillColor: Colors.amber,
                    prefixIcon: Icon(Icons.email),

                    // helperText: "Enter Email",
                    hintText: "Enter Email",
                    // prefixText: "Email",
                    // suffixText: "@gmail",
                    // counterText: "10/100",
                    // semanticCounterText: "asdasd",
                    // labelText: "Enter Email",
                  ),
                  showCursor: false,
                ),
                AnimatedToggleSwitch<bool>.dual(
                  current: positive,
                  first: false,
                  second: true,
                  spacing: 50.0,
                  style: const ToggleStyle(
                    borderColor: Colors.transparent,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1.5),
                      ),
                    ],
                  ),
                  borderWidth: 5.0,
                  height: 55,
                  onChanged: (b) => setState(() => positive = b),
                  styleBuilder:
                      (b) => ToggleStyle(
                        indicatorColor: b ? Colors.red : Colors.green,
                      ),
                  iconBuilder:
                      (value) =>
                          value
                              ? const Icon(Icons.coronavirus_rounded)
                              : const Icon(Icons.tag_faces_rounded),
                  textBuilder:
                      (value) =>
                          value
                              ? const Center(child: Text('Oh no...'))
                              : const Center(child: Text('Nice :)')),
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isShow,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    filled: true,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    fillColor: Colors.amber,
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        isShow = !isShow;
                        print(isShow);
                        setState(() {});
                      },

                      icon: Icon(
                        isShow ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),

                    // helperText: "Enter Email",
                    hintText: "Enter Password",
                    // prefixText: "Email",
                    // suffixText: "@gmail",
                    // counterText: "10/100",
                    // semanticCounterText: "asdasd",
                    // labelText: "Enter Email",
                  ),
                  showCursor: false,
                ),

                TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // login()
                    }

                    print(emailController!.text);
                  },
                  child: Text("data"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
