import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarFilter extends StatelessWidget {
  const SearchBarFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(8.r)),
      height: 35.h,
      width: 35.h,
      child: Icon(
        CupertinoIcons.settings_solid,
        color: Colors.white,
      ),
    );
  }
}
