// ignore: unused_import
import 'package:aplikasi_bootcamp/data/model/banner/banner_response.dart';
// ignore: unused_import
import 'package:aplikasi_bootcamp/data/model/course/course_response.dart';
import 'package:aplikasi_bootcamp/data/repositories/course_repositories_impl.dart';
import 'package:aplikasi_bootcamp/datasource/banner/banner_remote_datasource.dart';
import 'package:aplikasi_bootcamp/datasource/course/course_remote_datasource.dart';
import 'package:aplikasi_bootcamp/domain/usecase/course/get_course_usecase.dart';
import 'package:aplikasi_bootcamp/pages/blocs/banners/banners_cubit.dart';
import 'package:aplikasi_bootcamp/pages/blocs/course/course_cubit.dart';
import 'package:aplikasi_bootcamp/pages/diskusi/chat.dart';
import 'package:aplikasi_bootcamp/pages/profil/profil.dart';
import 'package:aplikasi_bootcamp/pages/home/all_course_screen.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_bootcamp/pages/home/course_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Beranda extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  Beranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CourseCubit>(
          create: (context) => CourseCubit(
              getCourseUsecase: GetCourseUsecase(
                  repository: CourseRepositoryImpl(
                      remoteDatasource: CourseRemoteDatasource()),
                ),
            )
            ..getCourses(),
        ),
        BlocProvider<BannersCubit>(
          create: (context) => BannersCubit(
            remoteDatasource: BannerRemoteDatasource(),
          )..getBanners(),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi Bagas Djunaedi",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Selaamat Malam -_-",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              CircleAvatar(
                foregroundImage: AssetImage("assets/images/ppaku.jpg"),
              ),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 17, 111, 212),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 9, right: 9),
                          child: Text(
                            "Mau Kerjain Latihan Soal Apa Hari Ini ?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/images/belajar.png",
                        width: 200,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Pilih Pelajaran",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    BlocBuilder<CourseCubit, CourseState>(
                      builder: (context, state) {
                        if (state is CourseSuccess) {
                          return TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AllCourseScreen(
                                    courselist: state.courselist,
                                  ),
                                ),
                              );
                            },
                            child: const Text(
                              "Lihat Semua",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 10,
                              ),
                            ),
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                  ],
                ),

                BlocBuilder<CourseCubit, CourseState>(
                  builder: (context, state) {
                    if (state is CourseSuccess) {
                      return ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 3,
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 12),
                        itemBuilder: (context, index) {
                          final course = state.courselist[index];

                          return CourseCard(
                            jumlahDone: course.jumlahDone,
                            jumlahMateri: course.jumlahMateri,
                            majorName: course.majorName,
                            urlCover: course.urlCover,
                          );
                        },
                      );
                    } else if (state is CourseError) {
                      return Center(
                        child: Text(state.message ?? ''),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),

                // : const Center(child: CircularProgressIndicator()),
                const SizedBox(height: 16),
                SizedBox(
                    height: 170,
                    child: BlocBuilder<BannersCubit, BannersState>(
                      builder: (context, state) {
                        if (state is BannersSuccess) {
                          return ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: state.bannerResponse.data?.length ?? 0,
                            separatorBuilder: (context, index) =>
                                const SizedBox(width: 8),
                            itemBuilder: (context, index) {
                              final banner = state.bannerResponse.data?[index];
                              return Image.network(
                                banner?.eventImage ?? '',
                                width: 350,
                                fit: BoxFit.cover,
                              );
                            },
                          );
                        } else if (state is BannersError) {
                          return Center(
                            child: Text(state.message ?? ''),
                          );
                        }

                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    )),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
            child: GNav(
                backgroundColor: Colors.white,
                color: Colors.grey,
                activeColor: Colors.blue[300],
                tabBackgroundColor: Colors.purple.shade50,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.chat,
                    text: 'Diskusi',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profil',
                  ),
                ],
                onTabChange: (int index) {
                  switch (index) {
                    case 0:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Beranda(),
                        ),
                      );
                      break;

                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Chat(),
                        ),
                      );
                      break;

                    case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profil(),
                        ),
                      );
                      break;
                  }
                }),
          ),
        ),
      ),
    );
  }
}
