import 'package:blog/Blog/Add_blog/add_blog_view.dart';
import 'package:blog/services/firebase_auth_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class HomeViewModel {
  
  onTapLogoutButton(BuildContext context) async{
    context.read<FirebaseAuthMethods>().signOut(context);
  }

  onTapAddButton(BuildContext context) {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const AddBlogView()),
  );
  }

}