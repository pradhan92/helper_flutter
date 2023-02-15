
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:helper/complate/controller/product_category_controller.dart';
import 'package:helper/complate/controller/product_controller.dart';
import 'package:helper/complate/controller/single_product_controller.dart';
import 'package:helper/complate/screen/single_product.dart';
import 'package:helper/complate/view/login.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pController = Get.find<ProductController>();
    var pcController = Get.find<ProductCategoryController>();
    var spController = Get.find<SingleProductController>();
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text("90's Store"),
          actions: [
            IconButton(
                onPressed: () async {
                  SharedPreferences preferences =
                      await SharedPreferences.getInstance();
                  Get.defaultDialog(
                      title: 'Logout',
                      barrierDismissible: false,
                      content: Column(
                        children: [
                          Text("Are you sure that you want to logout!!! "),
                        ],
                      ),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text("Cancel")),
                        ElevatedButton(
                            onPressed: () {
                              preferences.remove("token");
                              Get.offAll(() => LoginView());
                            },
                            child: Text("Ok")),
                      ]);
                },
                icon: Icon(Icons.logout)),
          ],
        ),
        body: Obx(() {
          if (pcController.isLoading.value == true) {
            return Center(child: CircularProgressIndicator.adaptive());
          } else {
            return SingleChildScrollView(
                child: Column(children: [
              //wedget1 ListTile
              ListTile(
                title: Center(
                    child: Text(
                  "Categories of items",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                  height: 40,
                  // width: MediaQuery.of(context).size.width,
                  width: Get.size.width,
                  child: ListView.builder(
                      itemCount: pcController.category.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Chip(
                              backgroundColor: Colors.green[300],
                              label: Text(pcController.category[index])),
                        );
                      })),
              //ListTile
              ListTile(
                textColor: Colors.black,
                title: Center(
                    child: Text("Latest Available All Items",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold))),
              ),
              //GridView
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: pController.products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    var product = pController.products[index];
                    return InkWell(
                      onTap: () {
                        spController.getProduct(product.id);
                        Get.to(() => SingleProductScreen());
                      },
                      child: Card(
                        child: Stack(children: [
                          Image.network(
                            product.image,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            right: 10,
                            child: Text("USD.${product.price}"),
                          ),
                          RatingBar.builder(
                            initialRating:
                                double.parse(product.rating!.rate.toString()),
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 16,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          )
                        ]),
                      ),
                      // child: Card(
                      //   child: ListTile(
                      //     leading: Image.network(
                      //       product.image,
                      //       fit: BoxFit.cover,
                      //     ),
                      //     title: Text("${product.title}"),
                      //     subtitle: Text("USD.${product.price}"),
                      //   ),
                      // ),
                    );
                  })
            ]));
          }
        }));
  }
}
