import 'package:flutter/material.dart';
import 'package:aplikasi_bootcamp/pages/home/trigonometri/done.dart';

void main() {
  runApp(const Soalone());
}

class Soalone extends StatefulWidget {
  const Soalone({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SoaloneState createState() => _SoaloneState();
}

class _SoaloneState extends State<Soalone> {
  // ignore: unused_element
  void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/images/happy.png', width: 100, height: 100)),
            const SizedBox(height: 16),
            const Text('Kumpulkan latihan soal sekarang?'),
            const Text('Boleh langsung kumpulin dong', style: TextStyle(fontSize: 12, color: Colors.grey),),
          ],
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Nanti Dulu'),
            onPressed: () {
              Navigator.of(context).pop(); // Tutup dialog
            },
          ),
          ElevatedButton(
            // ignore: sort_child_properties_last
            child: const Text('Ya', style: TextStyle(color: Colors.white),),
            onPressed: () {
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const Done(),),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 69, 128, 255),
            ),
          ),
        ],
      );
    },
  );
}

  Color? pilihanA = Colors.white;
  Color? pilihanB = Colors.white;
  Color? pilihanC = Colors.white;
  Color? pilihanD = Colors.white;
  Color? lingkaran1Color = Colors.grey[200];
  Color? lingkaran2Color = Colors.grey[200];
  Color? lingkaran3Color = Colors.grey[200];
  Color? lingkaran4Color = Colors.grey[200];
  Color? lingkaran5Color = Colors.grey[200];

  void selectLakiLaki() {
    setState(() {
      lingkaran1Color = Colors.blue[300];
      lingkaran2Color= Colors.grey[200];
      lingkaran3Color = Colors.grey[200];
      lingkaran4Color = Colors.grey[200];
      lingkaran5Color = Colors.grey[200];
    });
  }

  void selectPerempuan() {
    setState(() {
      lingkaran2Color = Colors.blue[300];
      lingkaran3Color = Colors.grey[200];
      lingkaran4Color = Colors.grey[200];
      lingkaran5Color = Colors.grey[200];
      lingkaran1Color = Colors.grey[200];
    });
  }

  void selectLingkaran3() {
    setState(() {
      lingkaran3Color = Colors.blue[300];
      lingkaran4Color = Colors.grey[200];
      lingkaran5Color = Colors.grey[200];
      lingkaran1Color = Colors.grey[200];
      lingkaran2Color= Colors.grey[200];
    });
  }

  void selectLingkaran4() {
    setState(() {
      lingkaran4Color = Colors.blue[300];
      lingkaran5Color = Colors.grey[200];
      lingkaran1Color = Colors.grey[200];
      lingkaran2Color= Colors.grey[200];
      lingkaran3Color = Colors.grey[200];
    });
  }

  void selectLingkaran5() {
    setState(() {
      lingkaran5Color = Colors.blue[300];
      lingkaran1Color = Colors.grey[200];
      lingkaran2Color= Colors.grey[200];
      lingkaran3Color = Colors.grey[200];
      lingkaran4Color = Colors.grey[200];
    });
  }

  void selectpilihanA() {
    setState(() {
      pilihanA = Colors.blue[500];
      pilihanB = Colors.white;
      pilihanC = Colors.white;
      pilihanD = Colors.white;
    });
  }

  void selectpilihanB() {
    setState(() {
      pilihanB = Colors.blue[500];
      pilihanC = Colors.white;
      pilihanD = Colors.white;
      pilihanA = Colors.white;
    });
  }

  void selectpilihanC() {
    setState(() {
      pilihanC = Colors.blue[500];
      pilihanD = Colors.white;
      pilihanB = Colors.white;
      pilihanA = Colors.white;
    });
  }

  void selectpilihanD() {
    setState(() {
      pilihanD = Colors.blue[500];
      pilihanA = Colors.white;
      pilihanB = Colors.white;
      pilihanC = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Center(
            child: Text(
              "Quiz",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[200],
              ),
            ),
          ),
          automaticallyImplyLeading: true,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: lingkaran1Color,
                        ),
                        child: InkWell(
                          onTap: selectLakiLaki,
                          child: const Center(
                            child: Text("1", 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: lingkaran2Color,
                        ),
                        child: InkWell(
                          onTap: selectPerempuan,
                          child: const Center(
                            child: Text("2", 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: lingkaran3Color,
                        ),
                        child: InkWell(
                          onTap: selectLingkaran3,
                          child: const Center(
                            child: Text("3", 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: lingkaran4Color,
                        ),
                        child: InkWell(
                          onTap: selectLingkaran4,
                          child: const Center(
                            child: Text("4", 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: lingkaran5Color,
                        ),
                        child: InkWell(
                          onTap: selectLingkaran5,
                          child: const Center(
                            child: Text("5", 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Soal Nomor 1", 
                        style: TextStyle(
                          color: Colors.grey[300], 
                          fontSize: 10,
                          ),
                        ),
                    ),
                    const SizedBox(height: 12),
                    const Text("Nilai dari sin(30°) adalah...", 
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15, 
                      fontWeight: FontWeight.w500
                      ),
                    ),
                    const SizedBox(height: 12),
                    GestureDetector(
                      onTap: selectpilihanA,
                      child: Container(
                        width: 250,
                        height: 45,
                        decoration: BoxDecoration(
                          color: pilihanA,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Center(
                          child: Text(
                            "A. 0",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    GestureDetector(
                      onTap: selectpilihanB,
                      child: Container(
                        width: 250,
                        height: 45,
                        decoration: BoxDecoration(
                          color: pilihanB,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Center(
                          child: Text(
                            "B. 0,5",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    GestureDetector(
                      onTap: selectpilihanC,
                      child: Container(
                        width: 250,
                        height: 45,
                        decoration: BoxDecoration(
                          color: pilihanC,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Center(
                          child: Text(
                            "C. 1",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    GestureDetector(
                      onTap: selectpilihanD,
                      child: Container(
                        width: 250,
                        height: 45,
                        decoration: BoxDecoration(
                          color: pilihanD,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Center(
                          child: Text(
                            "D. √3/2",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                          onPressed: () {
                            _showDialog(context); // Panggil method _showDialog
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 69, 128, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            minimumSize: const Size(150, 45),
                          ),
                          child: const Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
