
import 'package:aplikasi_bootcamp/domain/entities/course/course_data_entity.dart';
import 'package:aplikasi_bootcamp/domain/usecase/course/get_course_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'course_state.dart';

class CourseCubit extends Cubit<CourseState> {
  final GetCourseUsecase getCourseUsecase;

  CourseCubit({required this.getCourseUsecase}) : super(CourseInitial());

    void getCourses() async{
      emit(CourseLoading());

      final result = await getCourseUsecase.call();

      emit(CourseSuccess(courselist: result));
    }


}
