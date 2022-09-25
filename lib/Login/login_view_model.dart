import 'package:blog/services/firebase_auth_methods.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class LoginViewModel{

  onTapLoginButton(BuildContext context, String userName, String password) {
    print('tapped login');
    context.read<FirebaseAuthMethods>().loginWithEmail(email: userName, password: password, context: context);
   // FirebaseAuthMethods(FirebaseAuth.instance).loginWithEmail(email: userName, password: password, context: context);
  }

  onTapGoogleButton(BuildContext context) {
    print('tapped google');
    context.read<FirebaseAuthMethods>().signInWithGoogle(context);
  }



}