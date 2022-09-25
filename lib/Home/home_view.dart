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
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await viewModel.onTapLogoutButton(context);
            },
            icon: const Icon(Icons.logout_rounded),
          )
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('All'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('cat1'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('cat2'),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          await viewModel.onTapAddButton(context);
        },
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
