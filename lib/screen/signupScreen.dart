import 'package:flutter/material.dart';
import 'package:propertyapp/content/color.dart';
import 'package:propertyapp/screen/loginScreen.dart';
import 'package:propertyapp/service/auth_service.dart';
import 'package:propertyapp/utils/appValidators.dart';

class SignupScreenView extends StatefulWidget {
  const SignupScreenView({super.key});

  @override
  State<SignupScreenView> createState() => _SignupScreenStateView();
}

var App_validation = AppValidation();

class _SignupScreenStateView extends State<SignupScreenView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  var authService = AuthService();
  var isLoader = false;

  Future<void> _submitForm(GlobalKey<FormState> _formKey) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoader = true;
      });
      var data = {
        "username": _userNameController.text,
        "email": _emailController.text,
        "phone": _phoneController.text,
        "password": _passwordController.text,
      };
      await authService.createUser(data, context);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => LoginScreenView(),
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 100),
              Image.asset(
                'assets/images/bLogo.png',
                height: 150,
              ),
              const SizedBox(height: 50),
              Text(
                "Create New Account",
                style: TextStyle(
                    color: Color(Pcolor.lognheding),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _userNameController,
                style: TextStyle(color: Color(Pcolor.lognheding)),
                autovalidateMode: AutovalidateMode
                    .onUserInteraction, // jab user textfeild ko fill krdega to auto validate khatam hojaegi
                decoration: _buildInputDecoration('Username', Icons.person),
                validator: App_validation.validateUser,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _emailController,
                style: TextStyle(color: Color(Pcolor.lognheding)),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: _buildInputDecoration('Email', Icons.email),
                validator: App_validation.validateEmail,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _phoneController,
                style: TextStyle(color: Color(Pcolor.lognheding)),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: _buildInputDecoration('Phone Number', Icons.phone),
                validator: App_validation.validatePhoneNumber,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _passwordController,
                style: TextStyle(color: Color(Pcolor.lognheding)),
                decoration: _buildInputDecoration('Password', Icons.lock),
                validator: App_validation.validatepassword,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(Pcolor.btnSub_Color)),
                  onPressed: () {
                    isLoader ? print("Loading") : _submitForm(_formKey);
                  },
                  child: isLoader
                      ? Center(child: CircularProgressIndicator())
                      : Text(
                          'Create',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LoginScreenView(),
                    ),
                  );
                },
                child: Text(
                  "Back to login",
                  style: TextStyle(
                      color: Color(Pcolor.btnSub_Color),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration _buildInputDecoration(String label, IconData suffixIcon) {
    return InputDecoration(
        fillColor: Color(Pcolor.txtbg_Color),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(Pcolor.txtborderfil))),
        filled: true,
        labelStyle: TextStyle(color: Color(Pcolor.lognheding)),
        labelText: label,
        suffixIcon: Icon(
          suffixIcon,
          color: Color(Pcolor.lognheding),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)));
  }
}
