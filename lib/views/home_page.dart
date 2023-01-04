


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_ui/colors.dart';
import 'package:restaurant_ui/models/Products.dart';
import 'package:restaurant_ui/models/popular_products.dart';
import 'package:restaurant_ui/views/detail_page.dart';
import 'package:restaurant_ui/widgets/appbar.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const MyAppBar(title: "BURGER HOUSE"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchField(),

              const SizedBox(height: 20,),


              _buildRowItems(),


              const SizedBox(height: 14,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Popular", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                  Text("View all", style: TextStyle(color: red),)
                ],
              ),
              
              _buildPopularItems(),

            ],




          ),
        ),
      ),
    );
  }

  Widget _buildPopularItems() {
    return Column(
              children: popularProducts.map((e) {
                return      Container(

                  margin: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    onTap: (){
                      Get.to(()=>DetailPage(e), transition: Transition.leftToRight);
                    },
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Card(
                            color: const Color(0xffF2F2F2),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0, right: 18, left: 18, bottom: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: red,
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    height: 120,
                                    width: double.infinity,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(e.name, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),),
                                         Text('Rs ${e.price}', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18))
                                      ],
                                    ),
                                  ),

                                  Text(e.title, style: const TextStyle(color: Colors.grey),)
                                ],
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          bottom: 80,
                          right: 100,
                          left: 100,
                          child: Container(
                            height: 180,

                            child: Image.asset(e.image, fit: BoxFit.fitWidth,),
                          ),
                        )


                      ],
                    ),
                  ),
                );

              }).toList(),
            );
  }

  Widget _buildRowItems() {
    return SizedBox(
              height: 200,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                  itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Card(


                      elevation: 2,

                      color: index == 0 ? red : Colors.grey[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),),
                      child: SizedBox(
                        height: 220,
                        width: 120,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/images/image1.png'),
                            Text(products[index].title),

                            SizedBox(

                              height: 40,
                              width: 30,
                              child: FloatingActionButton(
                                heroTag: null,
                                backgroundColor: Colors.black,
                                elevation: 0,
                                onPressed: (){},
                                child: const Icon(Icons.navigate_next),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );

                  }
              ),
            );
  }

  Widget _buildSearchField() {
    return Card(
              color: Colors.grey[300],
              elevation: 6,
              child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                      hintText:  "Search",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),

                  )
              ),
            );
  }
}


