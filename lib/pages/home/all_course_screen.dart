import 'package:aplikasi_bootcamp/domain/entities/course/course_data_entity.dart';
import 'package:aplikasi_bootcamp/pages/home/course_card.dart';
import 'package:flutter/material.dart';

class AllCourseScreen extends StatelessWidget {
  final List<CourseDataEntity> courselist;

  const AllCourseScreen({super.key, required this.courselist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Pilih Pelajaran',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: courselist.length,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final course = courselist[index];
      
            return CourseCard(
              jumlahDone: course.jumlahDone ,
              jumlahMateri: course.jumlahMateri,
              majorName: course.majorName,
              urlCover: course.urlCover,
            );
          },
        ),
      ),
    );
  }
}
