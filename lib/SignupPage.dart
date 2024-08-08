import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:todo_sample/api/AuthCollection.api.dart';
import 'package:todo_sample/UserProvider.dart';
import 'package:todo_sample/main.dart';
import 'package:todo_sample/HomePage.dart';
import 'package:todo_sample/LoginPage.dart';

@NowaGenerated({'auto-width': 553.0, 'auto-height': 808.0})
class SignupPage extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() {
    return _SignupPageState();
  }
}

@NowaGenerated()
class _SignupPageState extends State<SignupPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController firstName = TextEditingController();

  TextEditingController lastName = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  bool? loading = false;

  GlobalKey<FormState> formKey1 = GlobalKey<FormState>();

  List<String?>? list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            Positioned(
              width: 308.5,
              child: Form(
                child: NFlex(
                  direction: Axis.vertical,
                  spacing: 40.0,
                  children: [
                    FlexSizedBox(
                      height: 117.0,
                      child: Image(
                        image: const AssetImage(
                            'assets/Cool Kids - Standing 1.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    FlexSizedBox(
                      width: null,
                      height: null,
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.w700),
                      ),
                    ),
                    FlexSizedBox(
                      width: 308.5,
                      child: NFlex(
                        direction: Axis.vertical,
                        spacing: 13.0,
                        children: [
                          FlexSizedBox(
                            width: 308.0,
                            height: null,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(4294967295),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                    borderSide: const BorderSide(
                                        width: 0.0, color: Color(16777215))),
                                hintText: 'First name',
                                prefixIcon: const Icon(
                                  IconData(58513, fontFamily: 'MaterialIcons'),
                                  color: Color(4294951722),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                    borderSide: const BorderSide(width: 0.0)),
                                hintStyle:
                                    TextStyle(fontWeight: FontWeight.w300),
                              ),
                              controller: firstName,
                              validator: (value) {
                                if (value == null || value!.isEmpty) {
                                  return 'Field is required';
                                }
                                return null;
                              },
                            ),
                          ),
                          FlexSizedBox(
                            width: 308.0,
                            height: null,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(4294967295),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                    borderSide: const BorderSide(width: 0.0)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                    borderSide: const BorderSide(
                                        width: 0.0, color: Color(16777215))),
                                hintText: 'Last name',
                                prefixIcon: const Icon(
                                  IconData(58513, fontFamily: 'MaterialIcons'),
                                  color: Color(4294951722),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                    borderSide: const BorderSide(width: 0.0)),
                                hintStyle:
                                    TextStyle(fontWeight: FontWeight.w300),
                              ),
                              controller: lastName,
                              validator: (value) {
                                if (value == null || value!.isEmpty) {
                                  return 'Field is required';
                                }
                                return null;
                              },
                            ),
                          ),
                          FlexSizedBox(
                            width: 308.0,
                            height: null,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(4294967295),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                    borderSide: const BorderSide(width: 0.0)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                    borderSide: const BorderSide(
                                        width: 0.0, color: Color(16777215))),
                                hintText: 'Email',
                                prefixIcon: const Icon(
                                  IconData(59686, fontFamily: 'MaterialIcons'),
                                  color: Color(4294951722),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                    borderSide: const BorderSide(width: 0.0)),
                                hintStyle:
                                    TextStyle(fontWeight: FontWeight.w300),
                              ),
                              controller: email,
                              validator: (value) {
                                if (value == null || value!.isEmpty) {
                                  return 'Field is required';
                                }
                                if (!RegExp(kEmailValidationRegex)
                                    .hasMatch(value!)) {
                                  return 'Invalid email';
                                }
                                return null;
                              },
                            ),
                          ),
                          FlexSizedBox(
                            width: 308.0,
                            height: null,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(4294967295),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                    borderSide: const BorderSide(width: 0.0)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                    borderSide: const BorderSide(
                                        width: 0.0, color: Color(16777215))),
                                hintText: 'Password',
                                prefixIcon: const Icon(
                                  IconData(984363, fontFamily: 'MaterialIcons'),
                                  color: Color(4294951722),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                    borderSide: const BorderSide(width: 0.0)),
                                hintStyle:
                                    TextStyle(fontWeight: FontWeight.w300),
                              ),
                              controller: password,
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value!.isEmpty) {
                                  return 'Field is required';
                                }
                                return null;
                              },
                            ),
                          )
                        ],
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                    ),
                    FlexSizedBox(
                      width: 209.689453125,
                      height: 63.0,
                      child: Material(
                        child: InkWell(
                          child: Align(
                            alignment: const Alignment(0.0, 0.0),
                            child: Text(
                              'CREATE ACCOUNT',
                              style: TextStyle(
                                color: const Color(4278190080),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              AuthCollection()
                                  .register(
                                email: email.text,
                                password: password.text,
                                firstName: firstName.text,
                                lastName: lastName.text,
                              )
                                  .then((value) {
                                UserProvider.of(context, listen: false).user =
                                    value?.user;
                                sharedPrefs.setString(
                                    'token', value!.tokens!.accessToken!);
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomePage()));
                              }, onError: (error) {
                                loading = false;
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text(
                                    error!.toString(),
                                  ),
                                  backgroundColor: const Color(4294901760),
                                ));
                                setState(() {});
                              });
                              setState(() {});
                            }
                          },
                        ),
                        color: const Color(536870911),
                      ),
                    ),
                    FlexSizedBox(
                      width: null,
                      height: null,
                      child: GestureDetector(
                        child: NFlex(
                          direction: Axis.vertical,
                          spacing: 0.0,
                          children: [
                            const FlexSizedBox(
                              width: null,
                              height: null,
                              child: Text(
                                'Have already an account?',
                                style: TextStyle(),
                              ),
                            ),
                            FlexSizedBox(
                              width: null,
                              height: null,
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: const Color(4294931761)),
                              ),
                            )
                          ],
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                      ),
                    )
                  ],
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
                key: formKey,
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: Visibility(
                visible: loading!,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0),
                      borderRadius: BorderRadius.circular(0.0)),
                  child: const Align(
                    alignment: Alignment(0.0, 0.0),
                    child: CircularProgressIndicator(
                      color: Color(4278190080),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4293916158),
    );
  }
}
