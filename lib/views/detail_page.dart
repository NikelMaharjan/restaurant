

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_ui/colors.dart';
import 'package:restaurant_ui/models/popular_products.dart';
import 'package:get/get.dart';


class DetailPage extends StatelessWidget {



  PopularProducts product;
  DetailPage(this.product);

  @override
  Widget build(BuildContext context) {

    final h = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Column(

          children: [
            
            Expanded(
              child: Container(
                child: Column(
                  children: [

                    Stack(
                      children: [
                        Container(height: h*0.7,),
                        Card(
                          elevation: 8,
                          color: Colors.grey[350],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(180),
                              bottomLeft: Radius.circular(180),
                            ),
                          ),
                          child: Container(
                            height: h*0.64,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    _buildIconButton(icon: CupertinoIcons.back, isBack: true),
                                    _buildIconButton(icon: CupertinoIcons.heart, color: red),


                                  ],
                                ),
                                const SizedBox(height: 20,),
                                Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                const SizedBox(height: 16,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Text(product.description, textAlign: TextAlign.center, style: const TextStyle(color: black, fontWeight: FontWeight.w600),),
                                ),
                                const SizedBox(height: 60,),

                                Image.asset(product.image, height: h*0.3, width: w*0.5, fit: BoxFit.fitWidth,),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: w*0.14,
                          top: h*0.57,
                            child: Card(
                              elevation: 8,
                              color: Colors.grey[300],
                              child: Container(
                                height: 38,
                                width: 38,
                                child: Center(child: Text("S", style: TextStyle(fontWeight: FontWeight.bold),)),
                              ),
                            )),

                        Positioned(
                            left: w*0.43,
                            top: 520,
                            child: Card(
                              elevation: 8,
                              color: Colors.grey[300],
                              child: Container(
                                height: 38,
                                width: 38,
                                child: Center(child: Text("M", style: TextStyle(fontWeight: FontWeight.bold),)),
                              ),
                            )),

                        Positioned(
                            right: w*0.2,
                            top: h*0.58,
                            child: Card(
                              elevation: 8,
                              color: Colors.grey[300],
                              child: Container(
                                height: 38,
                                width: 38,
                                child: Center(child: Text("L", style: TextStyle(fontWeight: FontWeight.bold),)),
                              ),
                            )),


                      ],
                    ),

                    SizedBox(height: 60,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        FloatingActionButton.small(
                          heroTag: null,

                          backgroundColor: lightRed,
                          elevation: 0,
                          onPressed: (){},
                          child: const Icon(CupertinoIcons.add, color: Colors.black,),
                        ),

                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            child: Text("4")),

                        FloatingActionButton.small(
                          heroTag: null,
                          backgroundColor: lightRed,
                          elevation: 0,
                          onPressed: (){},
                          child: const Icon(CupertinoIcons.minus, color: Colors.black,),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),

         
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("price", style: TextStyle(color: Colors.grey),),
                      Text(product.price, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),)
                    ],
                  ),

                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(w*0.336, h*0.06),
                        backgroundColor: red
                      ),
                      child: Row(
                        children: [
                          Icon(CupertinoIcons.share_solid),
                          Text("Go to Cart", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      )
                  ),


                ],
              ),
            )

          ],

        ) ,
      ),
    );
  }

  Widget _buildIconButton({required IconData icon, Color? color,  bool? isBack}) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),),
        color: Colors.grey[300],
        elevation: 4,
        child: IconButton(onPressed: (){
          isBack != null ? Get.back() : null;
         }, icon: Icon(icon, color: color,)));
  }

}
