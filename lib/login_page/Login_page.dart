import 'package:erplyshop/global/colors.dart';
import 'package:erplyshop/global/text_styles.dart';
import 'package:erplyshop/global/widget/appBar_widget.dart';
import 'package:erplyshop/product_page/products_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Login',
              style: Styles.whiteRegular42,
            ),
            TextField(style: Styles.whiteRegular10,

              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: UiColors.white, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: UiColors.white38, width: 2.0),
                  ),
                  labelText: 'Username',
                  labelStyle: Styles.whiteRegular16),
            ),
            TextField(style: Styles.whiteRegular10,
              obscureText: true,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: UiColors.white, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: UiColors.white38, width: 2.0),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: Styles.whiteRegular16),
            ),
            TextField(style: Styles.whiteRegular10,
              //obscureText: true,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: UiColors.white, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: UiColors.white38, width: 2.0),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Client Code',
                  labelStyle: Styles.whiteRegular16),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ProductsPage()),
                );
              },
              child: Text(
                'Login',
                style: Styles.black24,
              ),
              color: UiColors.deepPurpleAccent,
              minWidth: MediaQuery.of(context).size.width,
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
