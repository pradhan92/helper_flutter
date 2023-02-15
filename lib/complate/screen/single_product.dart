
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:helper/complate/controller/single_product_controller.dart';

class SingleProductScreen extends StatefulWidget {
  const SingleProductScreen({Key? key}) : super(key: key);

  @override
  State<SingleProductScreen> createState() => _SingleProductScreenState();
}

class _SingleProductScreenState extends State<SingleProductScreen> {
  int qty = 1;
  @override
  Widget build(BuildContext context) {
    var spController = Get.find<SingleProductController>();
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() {
        if (spController.isLoading.value == true) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "${spController.product.value.title}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: Get.size.width,
                    height: 300.0,
                    child: Image.network("${spController.product.value.image}"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$${spController.product.value.price}",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      RatingBar.builder(
                        initialRating: double.parse(
                            spController.product.value.rating!.rate.toString()),
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${spController.product.value.description}",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  if (qty <= 1) {
                                    qty = 1;
                                  } else {
                                    qty--;
                                  }

                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.remove_circle_outline,
                                  size: 40,
                                )),
                            SizedBox(
                              width: 10,
                              child: Text(
                                "$qty",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.w300),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            IconButton(
                              onPressed: () {
                                qty++;
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.add_circle_outline,
                                size: 40,
                              ),
                            )
                          ],
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: Text("add to card")),
                    ],
                  )
                ],
              ),
            ),
          );
        }
      }),
    );
  }
}
