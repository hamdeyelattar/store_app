
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/update_product_page.dart';
import 'package:store_app/services/update_product.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    super.key, required this.product,
  });
  ProductModel product ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id,arguments: product);
      },
      child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
             
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.grey.withOpacity(.2),
                  spreadRadius: 0,
                  offset: Offset(10, 10)
                )
              ]),
              child: Card(
                elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                    Text(
                     product.title.substring(0,12),
                      style: TextStyle(color: Colors.grey, fontSize: 25),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                      r'$' '${product.price.toString()}',
                      style: TextStyle( fontSize: 25),
                    
                    ),
                    Icon(FontAwesomeIcons.heart,color: Colors.red,)
                      ],
                    )
                          ],
                        ),
                  )),
      
            ),
           Positioned(
            right: 40,
           top:-60,
            child: Image.network(product.image,height: 150,width: 150,))
          ], 
        ),
    );
  }
}
