import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_potal_aup/widgets/uploading_button_widget.dart';

class UploadingOptionsPopOver extends StatelessWidget {
  const UploadingOptionsPopOver({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.r),
      child: Column(
        children: [
          Text(
            'Access Granted',
            style: TextStyle(color: Colors.greenAccent, fontSize: 20.sp),
          ),
          Spacer(),
          UploadingButtonWidget(label: 'Latest Notification'),
          SizedBox(height: 5.h),
          UploadingButtonWidget(label: 'Scholarship'),
          SizedBox(height: 5.h),
          UploadingButtonWidget(label: 'Result'),
        ],
      ),
    );
  }
}
