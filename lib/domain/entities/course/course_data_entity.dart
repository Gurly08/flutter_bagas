class CourseDataEntity {
    final String courseId;
    final String majorName;
    final String courseCategory;
    final String courseName;
    final String urlCover;
    final int jumlahMateri;
    final int jumlahDone;
    final int progress;

    CourseDataEntity({
        required this.courseId,
        required this.majorName,
        required this.courseCategory,
        required this.courseName,
        required this.urlCover,
        required this.jumlahMateri,
        required this.jumlahDone,
        required this.progress,
    });
}