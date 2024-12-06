import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/Landing.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          color: Colors.lightBlueAccent,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserTextField(
                hintText: 'Enter your name',
                labelText: 'Name',
                icon: Icons.person,
                controller: nameController,
              ),
              const SizedBox(height: 20),
              UserTextField(
                hintText: 'Enter your email',
                labelText: 'Email',
                icon: Icons.email,
                controller: emailController,
              ),
              const SizedBox(height: 20),
              UserTextField(
                hintText: 'Enter your password',
                labelText: 'Password',
                icon: Icons.lock,
                controller: passwordController,
                isPassword: true,
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (nameController.text.isEmpty ||
                          emailController.text.isEmpty||
                          passwordController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Invalid credentials'),
                          ),
                        );
                      } else {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const Landing()),
                        // );
                        Get.to(const Landing());
                        print('Name: ${nameController.text}');
                        print('Email: ${emailController.text}');
                        print('Password: ${passwordController.text}');
                      }
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData icon;
  final TextEditingController controller;
  final bool isPassword;

  const UserTextField({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.icon,
    required this.controller,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: Icon(icon),
        border: const OutlineInputBorder(),
      ),
    );
  }
}