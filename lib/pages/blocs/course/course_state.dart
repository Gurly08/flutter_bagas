part of 'course_cubit.dart';

@immutable
sealed class CourseState {}

final class CourseInitial extends CourseState {}

final class CourseLoading extends CourseState {}

final class CourseSuccess extends CourseState {
  // ignore: non_constant_identifier_names
  final List<CourseDataEntity> courselist;

    // ignore: non_constant_identifier_names
    CourseSuccess({required this.courselist});
}

final class CourseError extends CourseState {
  final String? message;

  CourseError({this.message});
}
