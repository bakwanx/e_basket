import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_basket/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShootingScreen extends StatefulWidget {
  const ShootingScreen({Key? key}) : super(key: key);

  @override
  State<ShootingScreen> createState() => _ShootingScreenState();
}

class _ShootingScreenState extends State<ShootingScreen> {
  List<String> images = ['assets/shooting.png','assets/dribbling.png'];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    Widget indicatorImage(int index){
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(
            horizontal: 2
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: currentIndex == index ? Colors.black : Colors.white
        ),
      );
    }

    Widget header(){
      int index = -1;
      return Column(
        children: [
          CarouselSlider(
            items: images.map((image) => Image.asset(
              image,
              width: width * 0.7,
              fit: BoxFit.contain,
            )).toList(),
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, respon){
                setState(() {
                  currentIndex = index;
                });
              }
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((image){
              index ++;
              return indicatorImage(index);
            }).toList(),
          )
        ],
      );
    }

    Widget body(){
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 25
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shooting",
              style: primaryTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              "Permainan bola basket tentunya tidak akan terlepas dari salah satu teknik dasar lemparan yaitu shooting. Dalam permainan bola basket shooting adalah teknik lemparan yang sangat penting peranya dan bertujuan memasukan bola ke dalam ring dengan sebanyak-banyaknya jika pemain yang melakukan shooting dengan baik dan sering menghasilkan poin akan menjadi ancaman untuk tim lawan (Rustanto, 2017). Shooting memiliki karakteristik keterampilan terbuka (open skill), keterampilan diskrit (discrete skill) dan keterampilan kasar (gross skill). Pentingnya keterampilan shooting dalam permainan bola basket harus melalui teknik, metode, dan strategi yang benar (Sampurno & Qohhar, 2020). Adapun beberapa teknik shooting dalam permainan bola basket menurut (Hermawan & Rachman, 2018) antara lain : Tembakan kaitan, tembakan free throw, tembakan lay-up shoot, tembakan three point, tembakan meloncat dengan dua tangan (jump shoot), dan tembakan satu tangan diatas kepala (one hand set shoot). Oleh karena itu teknik dasar menembak atau shooting sangat diperlukan dalam permainan bola basket dan harus dipelajari dengan baik dan benar. Dalam permainan bola basket ada dua jenis tembakan yang dikemukakan oleh (Aryan & Mardela, 2019) yakni tembakan lapangan dan hukuman. Tembakan lapangan adalah suatu percobaan melempar bola kearah ring dengan menggunakan satu atau dua tangan bahkan bisa dilakukan dengan cara lay-up shoot. Sedangkan tembakan hukuman atau tembakan bebas atau penalty (free throw) diberikan kepada seorang pemain apabila pemain lawan melakukan pelanggaran didaerah tertentu. Ada tiga fase dalam melaksanakan shooting menurut (Majid & Roesdiyanto, 2018) yaitu :",
              style: primaryTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            Text(
              "Permainan bola basket tentunya tidak akan terlepas dari salah satu teknik dasar lemparan yaitu shooting. Dalam permainan bola basket shooting adalah teknik lemparan yang sangat penting peranya dan bertujuan memasukan bola ke dalam ring dengan sebanyak-banyaknya jika pemain yang melakukan shooting dengan baik dan sering menghasilkan poin akan menjadi ancaman untuk tim lawan (Rustanto, 2017). Shooting memiliki karakteristik keterampilan terbuka (open skill), keterampilan diskrit (discrete skill) dan keterampilan kasar (gross skill). Pentingnya keterampilan shooting dalam permainan bola basket harus melalui teknik, metode, dan strategi yang benar (Sampurno & Qohhar, 2020). Adapun beberapa teknik shooting dalam permainan bola basket menurut (Hermawan & Rachman, 2018) antara lain : Tembakan kaitan, tembakan free throw, tembakan lay-up shoot, tembakan three point, tembakan meloncat dengan dua tangan (jump shoot), dan tembakan satu tangan diatas kepala (one hand set shoot). Oleh karena itu teknik dasar menembak atau shooting sangat diperlukan dalam permainan bola basket dan harus dipelajari dengan baik dan benar. Dalam permainan bola basket ada dua jenis tembakan yang dikemukakan oleh (Aryan & Mardela, 2019) yakni tembakan lapangan dan hukuman. Tembakan lapangan adalah suatu percobaan melempar bola kearah ring dengan menggunakan satu atau dua tangan bahkan bisa dilakukan dengan cara lay-up shoot. Sedangkan tembakan hukuman atau tembakan bebas atau penalty (free throw) diberikan kepada seorang pemain apabila pemain lawan melakukan pelanggaran didaerah tertentu. Ada tiga fase dalam melaksanakan shooting menurut (Majid & Roesdiyanto, 2018) yaitu :",
              style: primaryTextStyle.copyWith(
                fontSize: 12,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          header(),
          body()
        ],
      ),
    );
  }
}
