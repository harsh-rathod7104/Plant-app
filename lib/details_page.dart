import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plantapp/model/plant_model.dart';

class DetailsPage extends StatelessWidget {
  final Plant plant;
  const DetailsPage({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail Page"),
        ),
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.50,
              child: Hero(
                tag: Key(plant.id.toString()),
                child: Image.asset(
                  plant.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 18.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 22.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${plant.name} (${plant.category})",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(8.r)),
                                margin: EdgeInsets.zero,
                                padding: EdgeInsets.zero,
                                height: 25.h,
                                width: 25.h,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 22.w),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took ",
                            style: TextStyle(
                              height: 1.4,
                              color: Colors.black54,
                              fontSize: 15.sp,
                              letterSpacing: 0.5,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
