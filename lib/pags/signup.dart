// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isPressed = true;

  GlobalKey<FormState> formState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(76, 229, 177, 0.40),
                Color.fromRGBO(30, 255, 178, 0.00),
              ],
              stops: [0.0, 1.0],
            ),
          ),
          child: Form(
            key: formState,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Expanded(flex: 3, child: Image.asset("images/ima.png")),
                const Expanded(
                  flex: 1,
                  child: Text(
                    "Welcome to RIIDE",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "username",
                      style: TextStyle(
                        fontFamily: "Mulish",
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffcdcdcd),
                        height: 20 / 9,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Expanded(
                  flex: 0,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your name";
                      }
                      return null;
                    },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter your name",
                        hintStyle: TextStyle(color: Color(0xff5e5e5e))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      "password",
                      style: TextStyle(
                        fontFamily: "Mulish",
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffcdcdcd),
                        height: 20 / 9,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Expanded(
                  flex: 0,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your password";
                      }
                      if (value.length < 4) {
                        return "the password must be more than 8 letters";
                      }
                      return null;
                    },
                    obscureText: isPressed,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPressed = !isPressed;
                          });
                        },
                        icon: isPressed == true
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                      border: OutlineInputBorder(),
                      hintText: "Enter your password",
                      hintStyle: TextStyle(
                        color: Color(0xff5e5e5e),
                      ),
                    ),
                  ),
                ),
                const Expanded(
                    flex: 2,
                    child: ListTile(
                      leading: Text(
                        "Remember me",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      trailing: Text(
                        "Forgot password",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent,
                        ),
                      ),
                    )),
                MaterialButton(
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9)),
                  onPressed: () {
                    if (formState.currentState!.validate()) {}
                  },
                  color: Color(0xff4CE5B1),
                  minWidth: screenWidth / 1.5,
                  child: Text(
                    "Sign in",
                    style: const TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff010100),
                      height: 16 / 11,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Don’t have an account ? ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      " Sign up",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Expanded(flex: 3, child: Container())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
