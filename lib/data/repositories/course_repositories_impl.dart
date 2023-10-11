// ignore: unused_import
import 'package:aplikasi_bootcamp/data/model/course/course_response.dart';
import 'package:aplikasi_bootcamp/datasource/course/course_remote_datasource.dart';
import 'package:aplikasi_bootcamp/domain/entities/course/course_data_entity.dart';
import 'package:aplikasi_bootcamp/domain/repository/course/course_repository.dart';

class CourseRepositoryImpl implements CourseRepository {
  final CourseRemoteDatasource remoteDatasource;

  const CourseRepositoryImpl({required this.remoteDatasource});
  @override
  Future<List<CourseDataEntity>> getCourses() async {
    final result = await remoteDatasource.getCourses();

    // ignore: non_constant_identifier_names
    final CourseData = result.data?.map(
      (e) => CourseDataEntity(
          courseId: e.courseId ?? '',
          majorName: e.majorName ?? '',
          courseCategory: e.courseCategory ?? '',
          courseName: e.courseName ?? '',
          urlCover: e.urlCover ?? '',
          jumlahMateri: e.jumlahMateri ?? 0,
          jumlahDone: e.jumlahDone ?? 0,
          progress: e.progress ?? 0,
      ),
    ).toList() ??[];

    return CourseData;
  }
}
