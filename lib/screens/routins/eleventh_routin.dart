import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:flutter/material.dart';

class EleventhRoutin extends StatefulWidget {
  const EleventhRoutin({super.key});

  @override
  State<EleventhRoutin> createState() => _EleventRoutinState();
}

class _EleventRoutinState extends State<EleventhRoutin> {
  final _pageController = PageController();
  double currentPage = 0;

  var images = [
    {
      'image': 'assets/images/section-3/3-18.png',
      'title': 'Stik',
      'text': 'sunscreen jenis ini efektif melindungi area yang sempit atau terbatas seperti sekitar bibir, hidung dan lingkaran mata',
    },
    {
      'image': 'assets/images/section-3/3-19.png',
      'title': 'Gel',
      'text': 'Water based gel cocok digunakan pada kulit berminyak dan kulit pria',
    },
    {
      'image': 'assets/images/section-3/3-20.png',
      'title': 'Cream',
      'text': 'Sunscreen bentuk cream cocok digunakan pada kulit kering',
    },
    {
      'image': 'assets/images/section-3/3-21.png',
      'title': 'Spray',
      'text': 'Sunscreen dengan bentuk ini cocok digunakan untuk anak-anak dan area yang luas di tubuh',
    },
    {
      'image': 'assets/images/section-3/3-22.png',
      'title': 'Lotion',
      'text': 'Cocok digunakan pada kulit normal cenderung berminyak karena kekentalanya yang rendah, tidak lengket dan mudah merata pada kulit',
    },
  ];
  //indicator handler
  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.toDouble();
      });
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double scaleWidth = width/511;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.0*scaleWidth),
          child: Column(
            children: [
              const SizedBox(height: 35.0),
              const TextBoleh(
                38.0, 
                'Sunscreen berdasarkan jenis kulit', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              const TextBodoAmat(
                24.0, 
                'Selain memperhatikan kandungan dari sunscreen, juga perlu diperhatikan bentuk sediaan dari sunscreen tersebut. Di pasaran terdapat berbagai macam bentuk sunscreen yang dapat disesuaikan dengan jenis kulit dan aktivitas. Benutk kosmetik sunscreen yaitu:', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 250.0,
                      child: PageView(
                        physics: const BouncingScrollPhysics(),
                        controller: _pageController,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          images.length, 
                          (index) => Container(
                            margin: const EdgeInsets.only(right: 15.0),
                            child: Column(
                              children: [
                                TextBoleh(
                                  28.0, 
                                  images[index]['title']!, 
                                  TextAlign.center, 
                                  Colors.white
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  height: 120.0,
                                  child: Image.asset(
                                    images[index]['image']!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                TextBodoAmat(
                                  20.0, 
                                  images[index]['text']!, 
                                  TextAlign.center, 
                                  Colors.white
                                ),
                              ],
                            ),
                          ) 
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        images.length, 
                        (index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 5),
                            alignment: Alignment.centerLeft,
                            height: 6,
                            width: 6,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentPage == index ? Colors.white : Colors.white30,
                            ),
                          );
                        }),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 25.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 80*scaleWidth,
                    child: Image.asset(
                      'assets/images/section-3/3-28.png',
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.center,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    flex: 1,
                    child: TextBodoAmat(
                      18.0, 
                      'Waktu pemakaian sunscreen adalah 15-30 menit sebelum keluar rumah/terpapar sinar UV dan sunscreen harus dibiarkan kering terlebih dahulu sebelum memakai make up. Pengulangan kembali sunscreen (chemical sunscreen_ kurang lebih 2-4 jam penggunaan tergantu aktivitas. Efektivitas sunscreen berkurang jika terkena keringat/air', 
                      TextAlign.left, 
                      Colors.white
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 45.0),
            ],
          ),
        ),
      ),
    );
  }
}