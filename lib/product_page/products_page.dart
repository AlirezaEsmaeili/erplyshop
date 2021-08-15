import 'package:erplyshop/global/colors.dart';
import 'package:erplyshop/global/text_styles.dart';
import 'package:erplyshop/global/widget/appBar_widget.dart';
import 'package:erplyshop/product_page/widget/product_item_widget.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiColors.white,
      appBar: AppBarWidget(),
      body: Column(
        children: [
          Container(
            color: UiColors.white,
            height: 70,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  height: 36,
                  child: TextField(
                    maxLines: 1,
                    style: TextStyle(fontSize: 17),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      filled: true,hintStyle: TextStyle(fontSize: 20.0, color: UiColors.white38),
                      prefixIcon:
                      Icon(Icons.search, color: Theme.of(context).iconTheme.color),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      fillColor: UiColors.brown,
                      contentPadding: EdgeInsets.zero,
                      hintText: 'Search..',

                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ProductItemWidget();
              },
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
