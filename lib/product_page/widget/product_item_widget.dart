import 'package:erplyshop/global/colors.dart';
import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: UiColors.brown,
        ),
        height: 100,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('AAAAAAAAAAAAA'),
                Text(
                  '\$' + "25.2",
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
            Image.network(
                'https://dkstatics-public.digikala.com/digikala-products/be2b97ed0fa5c8980c18a34cdf2f5bfbb0bcdb8e_1621519764.jpg?x-oss-process=image/resize,m_lfit,h_600,w_600/quality,q_90',
            height: 80,width: 80,

            ),
          ],
        ),
      ),
    );
  }
}
