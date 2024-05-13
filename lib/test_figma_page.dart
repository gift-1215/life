import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Column(
      children: [
        const Stack(
          children: [
            SizedBox(
              width: 23.300312042236328,
              height: 24.068981170654297,
            ),
            SizedBox(
              width: 7.768521785736084,
              height: 6.273639678955078,
            ),
            SizedBox(
              width: 1.4168661832809448,
              height: 6.303553581237793,
            ),
            SizedBox(
              width: 8.266704559326172,
              height: 6.2636590003967285,
            ),
            SizedBox(
              width: 8.134260177612305,
              height: 6.323502063751221,
            ),
            SizedBox(
              width: 9.62276554107666,
              height: 6.315013408660889,
            ),
            SizedBox(
              width: 8.271520614624023,
              height: 6.338354110717773,
            ),
            SizedBox(
              width: 7.930328369140625,
              height: 6.323644161224365,
            ),
            SizedBox(
              width: 8.18078899383545,
              height: 6.333476543426514,
            )
          ],
        ),
        Stack(
          children: [
            Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white)),
            const Text("帳號",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ))
          ],
        ),
        Stack(
          children: [
            Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white)),
            const Text("密碼",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ))
          ],
        ),
        Stack(
          children: [
            Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white)),
            const Text("註冊",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ))
          ],
        ),
        Stack(
          children: [
            Container(
                width: 280,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white)),
            const Column(
              children: [
                SizedBox(
                  width: 13.52132511138916,
                  height: 16.667774200439453,
                ),
                SizedBox(
                  width: 256.0002746582031,
                  height: 314.3997802734375,
                )
              ],
            ),
            const Text("用 Apple 登入",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ))
          ],
        ),
        Stack(
          children: [
            Container(
                width: 280,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white)),
            const Text("用 Google 登入",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
            const Column(
              children: [
                SizedBox(
                  width: 16.66666603088379,
                  height: 16.66666603088379,
                ),
                SizedBox(
                  width: 13.046667098999023,
                  height: 6.462500095367432,
                ),
                SizedBox(
                  width: 13.005833625793457,
                  height: 6.644166469573975,
                ),
                SizedBox(
                  width: 8.333333015441895,
                  height: 7.845099925994873,
                )
              ],
            )
          ],
        ),
        Stack(
          children: [
            Container(
                width: 280,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white)),
            const Text("用 LINE 登入",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
            Image.asset(
              "assets/life.png",
              width: 20,
              height: 19.06976890563965,
            )
          ],
        ),
        Stack(
          children: [
            Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white)),
            const Text("忘記密碼",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ))
          ],
        ),
        Stack(
          children: [
            Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xff445279))),
            const Text("登入",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ))
          ],
        ),
        const SizedBox(
          width: 300,
          height: 0,
        ),
        Image.asset(
          "assets/airyzone.png",
          width: 196.91598510742188,
          height: 179,
        )
      ],
    )));
  }
}
