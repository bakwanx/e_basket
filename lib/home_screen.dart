import 'package:e_basket/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    Widget header(){
      return Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          top: height * 0.08,
          left: 30,
          right: 30,
          bottom: 35
        ),
        child: Column(
          children: [
            Container(
              width: width * 0.8,
              child: Text(
                "Media Pembelajaran Basket",
                style: primaryTextStyle.copyWith(
                  fontSize: 30
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              "Teknik dasar permainan Bola Basket yang pemula harus kuasai",
              style: primaryTextStyle.copyWith(
                fontSize: 12
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget body(){
      return Container(
        margin: EdgeInsets.only(
          bottom: 20
        ),
        child: Column(
          children: [

            //shooting
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/shooting");
              },
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Image.asset(
                    "assets/shooting.png"
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 21
                    ),
                    child: Text(
                      "Shooting",
                      style: primaryTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 24
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 27,
            ),

            //dribbling
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/dribbling");
              },
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Image.asset(
                      "assets/dribbling.png"
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 21
                    ),
                    child: Text(
                      "Dribbling",
                      style: primaryTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 24
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 27,
            ),

            //layup
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/layup");
              },
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Image.asset(
                      "assets/layup.png"
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 21
                    ),
                    child: Text(
                      "Lay Up",
                      style: primaryTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 24
                      ),
                    ),
                  ),
                ],
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
