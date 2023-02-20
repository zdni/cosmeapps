import 'package:cosmeapps/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';

class BPOMScreen extends StatelessWidget {
  static const name = 'BPOM Screen';
  static const routeName = '/bpom';
  const BPOMScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 110.0,
                child: Image.asset(
                  'assets/images/logo-bpom.webp',
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(height: 5.0),
              const TextBodoAmat(
                18.0, 
                'BADAN PENGAWAS OBAT DAN MAKANAN', 
                TextAlign.center, 
                Colors.black
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.instagram.com/bpom_ri/'),
                    builder: (context, followLink) => InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      onTap: followLink,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black45,
                            width: 1.0
                          ),
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: const Icon(FontAwesomeIcons.instagram),
                      ),
                    ),
                  ),
                  const SizedBox(width: 25.0),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://twitter.com/BPOM_RI'),
                    builder: (context, followLink) => InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      onTap: followLink,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black45,
                            width: 1.0
                          ),
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: const Icon(FontAwesomeIcons.twitter),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://cekbpom.pom.go.id/'),
                builder: (context, followLink) => InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  onTap: followLink,
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black45,
                        width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: const Text('Buka Portal BPOM'),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)
                ),
                onTap: () => Navigator.pushNamed(context, HomeScreen.routeName),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black45,
                      width: 1.0
                    ),
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: const Text('Beranda'),
                ),
              ),
              const SizedBox(height: 35.0),
            ],
          ),
        ),
      ),
    );
  }
}