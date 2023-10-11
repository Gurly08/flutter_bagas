import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String urlCover;
  final String majorName;
  final int jumlahMateri;
  final int jumlahDone;

  const CourseCard({
    super.key,
    required this.urlCover,
    required this.majorName,
    required this.jumlahMateri,
    required this.jumlahDone,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.grey[200],
              child: Image.network(
                urlCover,
                errorBuilder: (context, error, stackTrace) => 
                  const SizedBox.shrink(),
              ),
            ),
            const SizedBox(width: 12),
             Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(majorName),
                  // ignore: unnecessary_brace_in_string_interps
                  Text(' $jumlahDone / $jumlahMateri Materi Selesai'),
                  LinearProgressIndicator(
                    value: (jumlahDone) == 0 ? 0 : ((jumlahMateri) / (jumlahDone)),
                  )
                ],
              ) 
            )
          ],
        ),
      ),
    );
  }
}