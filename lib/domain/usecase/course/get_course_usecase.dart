import 'package:aplikasi_bootcamp/domain/entities/course/course_data_entity.dart';
import 'package:aplikasi_bootcamp/domain/repository/course/course_repository.dart';

class GetCourseUsecase {
  final CourseRepository repository;

  const GetCourseUsecase({required this.repository});

  Future<List<CourseDataEntity>> call() async{
    return await repository.getCourses();
  }
}