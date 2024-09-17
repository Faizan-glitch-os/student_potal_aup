import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

import '../colors.dart';

class DownloadsScreen extends StatefulWidget {
  const DownloadsScreen({super.key});

  @override
  State<DownloadsScreen> createState() => _DownloadsScreenState();
}

class _DownloadsScreenState extends State<DownloadsScreen> {
  List<FileSystemEntity> downloadedImages = [];

  @override
  void initState() {
    super.initState();
    loadImages();
  }

  Future<void> loadImages() async {
    List<FileSystemEntity> images = await getDownloadedImages();
    setState(() {
      downloadedImages = images;
    });
  }

  Future<List<FileSystemEntity>> getDownloadedImages() async {
    Directory? externalDirectory = await getExternalStorageDirectory();

    Directory downloadDirectory =
        Directory('/storage/emulated/0/Download/Student Portal');

    if (await downloadDirectory.exists()) {
      return downloadDirectory
          .listSync()
          .where((file) =>
              file.path.endsWith('.jpg') ||
              file.path.endsWith('.png') ||
              file.path.endsWith('.jpeg'))
          .toList();
    }

    return [];
  }

  void showImage(int index) {
    showModalBottomSheet(
      useSafeArea: true,
      enableDrag: false,
      barrierColor: Colors.black12.withOpacity(.6),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          side: BorderSide(color: golden, width: 1.5.r)),
      context: context,
      builder: (ctx) => InteractiveViewer(
        minScale: 1,
        maxScale: 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: Image.file(
            File(downloadedImages[index].path),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: halfWhite,
      body: downloadedImages.isEmpty
          ? Center(
              child: Text(
                'No Images Found',
                style: TextStyle(
                    color: darkPurple,
                    fontSize: 20.sp,
                    fontFamily: 'Montserrat'),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(10).r,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .5,
                    crossAxisSpacing: 5),
                itemCount: downloadedImages.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      showImage(index);
                    },
                    child: Image.file(
                      File(downloadedImages[index].path),
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
    );
  }
}
