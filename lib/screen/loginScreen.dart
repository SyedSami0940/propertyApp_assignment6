import 'package:flutter/material.dart';
import 'package:propertyapp/content/color.dart';
import 'package:propertyapp/screen/DashboardScreen.dart';
import 'package:propertyapp/screen/detailScreen.dart';
import 'package:propertyapp/screen/forgotpassword.dart';
import 'package:propertyapp/screen/signupScreen.dart';
import 'package:propertyapp/service/auth_service.dart';
import 'package:propertyapp/utils/appValidators.dart';

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({super.key});

  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool passenable = true;
  bool _rememberMe = false;
  final AppValidation appValidation = AppValidation();
  var isLoader = false;
  var authService = AuthService();

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoader = true;
      });
      var data = {
        "email": _emailController.text,
        "password": _passwordController.text,
      };
      await authService.login(data, context);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => Dashboardview(),
        ),
      );
      setState(() {
        isLoader = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(Pcolor.loginbgcolor),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 80),
                Image.asset(
                  'assets/images/bLogo.png',
                  height: 150,
                ),
                const SizedBox(height: 20),
                Text(
                  "Login to Your Account",
                  style: TextStyle(
                      color: Color(Pcolor.lognheding),
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _emailController,
                  style: TextStyle(color: Color(Pcolor.lognheding)),
                  //autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: _buildInputDecoration('Username', Icons.percent),
                  validator: appValidation.validateEmail,
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _passwordController,
                  obscureText: passenable,
                  style: TextStyle(color: Color(Pcolor.lognheding)),
                  decoration:
                      _buildInputDecoration('Password', Icons.remove_red_eye),
                  validator: appValidation.validatepassword,
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = value!;
                        });
                      },
                    ),
                    const Text('Remember Me'),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(Pcolor.btnSub_Color)),
                    onPressed: () {
                      isLoader ? print("Loading") : _submitForm();
                    },
                    child: isLoader
                        ? Center(child: CircularProgressIndicator())
                        : Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => SignupScreenView(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20)),
                          Text(
                            "Create new account?",
                            style: TextStyle(
                              color: Color(Pcolor.btnSub_Color),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      "|",
                      style: TextStyle(
                        color: Color(Pcolor.btnSub_Color),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => ForgotPasswordScreen(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Forgot the Password?",
                            style: TextStyle(
                              color: Color(Pcolor.btnSub_Color),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                // Divider with "Or Continue With"
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                        indent: 30,
                        endIndent: 10,
                      ),
                    ),
                    const Text(
                      "Or Continue With",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w700),
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                        indent: 10,
                        endIndent: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                // Social Buttons (Example)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/ab.png',
                        height: 74,
                        width: 74,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/google.png',
                        height: 74,
                        width: 74,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/apple.png', // Google logo path
                        height: 74,
                        width: 74,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration _buildInputDecoration(String label, IconData suffixIcon) {
    return InputDecoration(
      fillColor: Color(Pcolor.txtbg_Color),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(Pcolor.txtbg_Color)),
      ),
      filled: true,
      labelStyle: TextStyle(color: Color(Pcolor.lognheding)),
      labelText: label,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            if (passenable) {
              passenable = false;
            } else {
              passenable = true;
            }
          });
        },
        icon: Icon(passenable == true ? Icons.remove_red_eye : Icons.password),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
