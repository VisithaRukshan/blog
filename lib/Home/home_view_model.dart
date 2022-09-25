import 'package:blog/services/firebase_auth_methods.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class HomeViewModel {
  onTapLogoutButton(BuildContext context) async{
    context.read<FirebaseAuthMethods>().signOut(context);
  }

}