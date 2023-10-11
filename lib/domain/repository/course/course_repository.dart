import 'package:aplikasi_bootcamp/domain/entities/course/course_data_entity.dart';

abstract class CourseRepository{
  Future<List<CourseDataEntity>> getCourses();
}