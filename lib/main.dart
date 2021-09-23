import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesmart/home/main_page.dart';
import 'package:shoesmart/pages/cart_page.dart';
import 'package:shoesmart/pages/product_page.dart';
import 'package:shoesmart/pages/sign_in_page.dart';
import 'package:shoesmart/pages/sign_up_page.dart';
import 'package:shoesmart/providers/page_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/cart': (context) => CartPage(),
        },
      ),
    );
  }
}
