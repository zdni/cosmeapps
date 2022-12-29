import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:flutter/material.dart';

class SixthRoutin extends StatelessWidget {
  const SixthRoutin({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double scaleWidth = width/511;
    double scaleHeight = height/1077;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const SizedBox(height: 35.0),
              const TextBodoAmat(
                28.0, 
                'Berdasarkan bahan dasar dalam komposisinya, moisturizer dibagi menjadi 3, yaitu:', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                width: 210*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-9.png'
                ),
              ),
              const SizedBox(height: 15.0),
              const TextBoleh(
                24.0, 
                'Pelembab berbahan dasar humektan', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 8.0),
              const TextBodoAmat(
                20.0, 
                'Humektan bersifat menarik air dari luar epidermis yang mendasari kulit dan menghidrasi kulit.', 
                TextAlign.left, 
                Colors.white
              ),
              const TextBodoAmat(
                20.0, 
                'Humektan cocok untuk semua jenis kulit, terutama jenis kulit berminyak, contoh dari humektan adalah Asam Hyaluronic, Gliserin, Madu dan ekstrak Aloe vera dengan bentuk gel.', 
                TextAlign.left, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                width: 210*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-10.png'
                ),
              ),
              const SizedBox(height: 15.0),
              const TextBoleh(
                24.0, 
                'Pelembab berbahan dasar emolien', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 8.0),
              const TextBodoAmat(
                20.0, 
                'Emolien bekerja dengan mengisi celah antar sel kulit sehingga menghasilkan permukaan kulit yang lebih halus.', 
                TextAlign.left, 
                Colors.white
              ),
              const TextBodoAmat(
                20.0, 
                'Emolien cocok untuk jenis kulit normal dan kering. lipid dan minyak yang ada pada emolien mengisi semua rekatan pada kulit, membantu menghaluskan permukaan kulit, dan membantu memperbaiki barner kulit. Contoh emolien adalah: Dimethicone, Cyclomethicon, Lanolin, Shea butter, Squalane, Minyak biji anggur dan Ceramides dalam bentuk sediaan krim/lotion. ', 
                TextAlign.left, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                width: 210*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-11.png'
                ),
              ),
              const SizedBox(height: 15.0),
              const TextBoleh(
                24.0, 
                'Pelembab berbahan dasar oklusif', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 8.0),
              const TextBodoAmat(
                20.0, 
                'Oklusif bekerja dengan melapisi stratum corneum kulit dan mencegah kehilangan air pada lapisan kulit untuk jenis kulit dewasa, dehidrasi dan kering.', 
                TextAlign.left, 
                Colors.white
              ),
              const TextBodoAmat(
                20.0, 
                'Oklusif lebih tebal dalam konsistensi mampu memblokir penguapan air secara sempurna untuk kulit kering. Contoh oklusif adalah Lanolin, minyak mineral dan minyak zaitun dalam bentuk balm atau krim kental.', 
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