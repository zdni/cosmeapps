import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:flutter/material.dart';

class TenthRoutin extends StatelessWidget {
  const TenthRoutin({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double scaleWidth = width/511;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18.0*scaleWidth),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 35.0),
              const TextBoleh(
                26.0, 
                'Jenis-jenis Sunscreen', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                width: 200*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-17.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              const SizedBox(height: 25.0),
              const TextBodoAmat(
                17.0, 
                'Tabir surya kimia/ Chemical Sunscreen', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 8.0),
              const TextBodoAmat(
                14.0, 
                'Chemical sunscreen melindungi kulit dengan cara menyerap sinar matahari dan mengubahnya menjadi energi panas. Kelebihan dari sunscreen ini adalah memiliki konsistensi yang lebih cari dan ringan sehingga banyak yang menggunakannya menjadi daily sunscreen karena tidak menimbulkan whitecast.', 
                TextAlign.left, 
                Colors.white
              ),
              const SizedBox(height: 4.0),
              const TextBodoAmat(
                14.0, 
                'Namun sunscreen masih tidak dapat menyerap seluruh sinar UV. Sehingga sinar UV yang jahat masih dapat menembus kulit. Masalah kulit seperti sunburn dll masih dapat dirasakan. Meskipun resikonya tidak sebesar dibandingkan jika tidak menggunakan sunscreen sama sekali. Sunscreen ini tetap bisa melindungi kulit dengan baik, namun kamu hari rajin re-aplly karena sunscreen ini tidak memiliki photostability sebaik physical sunscreen. Contoh: Avobenzone, Octinoxate.', 
                TextAlign.left, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              const TextBodoAmat(
                17.0, 
                'Tabir surya fisik/ Physical Sunscreen', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 8.0),
              const TextBodoAmat(
                14.0, 
                'Physical sunscreen bekerja dengan melindungi kulit dengan cara memantulkan sinar matahari. Sunscreen ini merupakan spektrum luas yang mampu melindungi dari sinar UV A dan UV B, bersifat stabil, potensi alergi yang ditimbulkan rendah dan tidak diserap oleh kulit sehingga dapat dipaka pada anak-anak. Namun sunscreen ini memiliki kekurangan yaitu cenderung terasa berat serta meninggalkan whitecast pada kulit. Selain itu sunscreen ini juga butuh waktu lama untuk diratakan dikulit. Untuk kamu yang memiliki banyak aktivitas di luar ruangan physical sunscreen baiki untuk kulitmu karena memiliki photstability baik tanpa perlu pengaplikasian ulang. Sunscreen ini juga mengandung bahan yang tidak menyumbat pori-pori (non komedogenik) sehingga cocok untuk kulit berminyak atau berjerawat. ContohL Zinc Oxide dan titanium dioxide.', 
                TextAlign.left, 
                Colors.white
              ),
              const SizedBox(height: 45.0),
            ],
          ),
        ),
      ),
    );
  }
}