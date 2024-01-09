import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plantapp/widgets/plant_list.dart';
import 'package:plantapp/widgets/populer_plant_list.dart';
import 'package:plantapp/widgets/searchBar_filter.dart';
import 'package:plantapp/widgets/search_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'Plant App',
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0.w),
            child: CircleAvatar(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              width: double.infinity,
              height: 35.h,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextfield(),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    SearchBarFilter()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // scrollDirection: Axis.horizontal,
                children: [
                  Text(
                    "All",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15.sp,
                    ),
                  ),
                  Text(
                    "Outdoor",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    "Indoor",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    "Office",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    "Graden",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.32,
              child: PlantList(),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                "Popular",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              child: PopulerPlantList(),
            )
          ],
        ),
      ),
    );
  }
}
