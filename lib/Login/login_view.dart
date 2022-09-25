
import 'package:blog/Login/login_view_model.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var viewModel = LoginViewModel();
  bool loading = false;
  final emailcon = TextEditingController();
  final passwordcon = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        width: MediaQuery.of(context).size.height * 0.4,
                        height: MediaQuery.of(context).size.height * 0.46,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "Login",
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              const SizedBox(
                                height: 45,
                              ),
                              Form(
                                key: _formkey,
                                child: Column(
                                  children: [
                                    TextFormField(
                                        keyboardType: TextInputType.emailAddress,
                                        controller: emailcon,
                                        decoration: const InputDecoration(
                                          hintText: "Email",
                                        )),
                                    TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      controller: passwordcon,
                                      decoration: const InputDecoration(
                                        hintText: "Password",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.05,
                              ),
                              ElevatedButton(
                                onPressed: () async{
                                  await viewModel.onTapLoginButton(context , emailcon.text , passwordcon.text);
                                },
                                child: const Text('Login'),
                              ),
                              const SizedBox(
                            height: 10,
                          ),
                          const Text("- OR -"),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () async{
                              await viewModel.onTapGoogleButton(context);
                            },
                            child: Container(
                              height: 37,
                              width: 49,
                              decoration:const BoxDecoration(
                                color: Colors.blueGrey,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.ac_unit_sharp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
