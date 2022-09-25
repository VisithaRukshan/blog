import 'package:blog/Home/home_view_model.dart';
import 'package:blog/services/firebase_auth_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var viewModel = HomeViewModel();
  @override
  Widget build(BuildContext context) { 
    final user = context.read<FirebaseAuthMethods>().user;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog'),
        actions: [
          IconButton(onPressed: ()async{ await viewModel.onTapLogoutButton(context);}, icon: const Icon(Icons.logout_rounded),)
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(user.email!),
        ]),
    );
  }
}