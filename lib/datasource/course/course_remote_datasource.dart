
import 'dart:developer';

import 'package:aplikasi_bootcamp/data/model/course/course_response.dart';
import 'package:dio/dio.dart';

class CourseRemoteDatasource{
  Future<CourseResponseModel> getCourses()async{
    try{

      const url = 'https://edspert.widyaedu.com/exercise'
                    '/data_course?major_name=IPA&user_email=testerngbayu@gmail.com';
      
      // ignore: non_constant_identifier_names
      final Response = await Dio().get(
        url,
         options: Options(
          headers: {'x-api-key' : '18be70c0-4e4d-44ff-a475-50c51ece99a0'},
        ),
      );

      final responseToModel = CourseResponseModel.fromJson(Response.data);

      return responseToModel;
      
    }catch (e){
      log(e.toString());
      rethrow;
    }
    // ignore: dead_code
    getCourses();
  }
}