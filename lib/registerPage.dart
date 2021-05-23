import 'package:flutter/material.dart';
import 'package:online_grocery_try/homeScreen.dart';
import 'package:online_grocery_try/signIn.dart';
import 'package:online_grocery_try/textStylePage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      color: Color(0xff0174BB),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(120),
                        bottomRight: Radius.circular(120),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 170,
                    bottom: -35,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 12,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Image.asset("assets/images/logo1.png",
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ],
                clipBehavior: Clip.none,
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _nameTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      _emailTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      _phoneTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      _passwordTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffFD8700),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => HomeScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Register',
                            style: buildTextStyle(
                              17,
                              Colors.white,
                              FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account? ',
                              style: buildTextStyle(
                                  15, Colors.black, FontWeight.w400),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SingInPage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Sign In',
                                style: buildTextStyle(
                                    15, Color(0xff0174BB), FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _emailTextField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        icon: Icon(
          Icons.email_rounded,
          color: Colors.grey,
        ),
        hintText: 'Enter your email address',
        labelText: 'Email Address',
      ),
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(
          Icons.password_rounded,
          color: Colors.grey,
        ),
        hintText: 'Enter your password',
        labelText: 'Password',
      ),
    );
  }

  Widget _nameTextField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        icon: Icon(
          Icons.person_rounded,
          color: Colors.grey,
        ),
        hintText: 'Enter your full name',
        labelText: 'Full Name',
      ),
    );
  }

  Widget _phoneTextField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        icon: Icon(
          Icons.phone_rounded,
          color: Colors.grey,
        ),
        hintText: 'Enter your phone number',
        labelText: 'Phone Number',
      ),
    );
  }
}
