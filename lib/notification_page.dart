import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 430,
    height: 932,
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(color: Color(0xFFF9FAFC)),
    child: Stack(
        children: [
            Positioned(
                left: 34,
                top: 60,
                child: Container(
                    width: 40,
                    height: 40,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Container(
                                height: 22,
                                child: Stack(children: [
                                
                                ]),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 30,
                top: 697,
                child: Container(
                    width: 370,
                    height: 165,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 370,
                                    height: 165,
                                    decoration: ShapeDecoration(
                                        color: Color(0xFFE3EBF6),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 0.50, color: Color(0xFFB5C5DF)),
                                            borderRadius: BorderRadius.circular(20),
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 51,
                                top: 39,
                                child: SizedBox(
                                    width: 110,
                                    height: 52,
                                    child: Text(
                                        'LBS',
                                        style: TextStyle(
                                            color: Color(0xFF004D7D),
                                            fontSize: 48,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w800,
                                            height: 0,
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 51,
                                top: 85,
                                child: SizedBox(
                                    width: 218,
                                    height: 51,
                                    child: Text(
                                        'SERVICE',
                                        style: TextStyle(
                                            color: Color(0xFF004D7D),
                                            fontSize: 36,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w100,
                                            height: 0,
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 205,
                                top: 43,
                                child: Container(
                                    width: 80,
                                    height: 80,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(children: [
                                    
                                    ]),
                                ),
                            ),
                            Positioned(
                                left: 291,
                                top: 25,
                                child: Text(
                                    '服\n務',
                                    style: TextStyle(
                                        color: Color(0xFFB5C5DF),
                                        fontSize: 48,
                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w800,
                                        height: 0,
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 30,
                top: 437,
                child: Container(
                    width: 180,
                    height: 230,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 180,
                                    height: 230,
                                    decoration: ShapeDecoration(
                                        color: Color(0xFFE3EBF6),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 0.50, color: Color(0xFFB5C5DF)),
                                            borderRadius: BorderRadius.circular(20),
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 180,
                                    height: 142,
                                    decoration: ShapeDecoration(
                                        color: Color(0xFF004D7D),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                            ),
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 42,
                                top: 149,
                                child: SizedBox(
                                    width: 125,
                                    height: 48,
                                    child: Text(
                                        '成為專家',
                                        style: TextStyle(
                                            color: Color(0xFF004D7D),
                                            fontSize: 24,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w800,
                                            height: 0,
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 42,
                                top: 173,
                                child: SizedBox(
                                    width: 125,
                                    height: 48,
                                    child: Text(
                                        'SALE',
                                        style: TextStyle(
                                            color: Color(0xFFB5C5DF),
                                            fontSize: 24,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w800,
                                            height: 0,
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 45,
                                top: 26,
                                child: Container(
                                    width: 90,
                                    height: 90,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(
                                        children: [
                                            Positioned(
                                                left: 18.75,
                                                top: 7.50,
                                                child: Container(
                                                    width: 52.50,
                                                    height: 75,
                                                    child: Stack(children: [
                                                    
                                                    ]),
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 220,
                top: 437,
                child: Container(
                    width: 180,
                    height: 230,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 180,
                                    height: 230,
                                    decoration: ShapeDecoration(
                                        color: Color(0xFFE3EBF6),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 0.50, color: Color(0xFFB5C5DF)),
                                            borderRadius: BorderRadius.circular(20),
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 180,
                                    height: 142,
                                    decoration: ShapeDecoration(
                                        color: Color(0xFF004D7D),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                            ),
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 38,
                                top: 173,
                                child: SizedBox(
                                    width: 125,
                                    height: 48,
                                    child: Text(
                                        'BUY',
                                        style: TextStyle(
                                            color: Color(0xFFB5C5DF),
                                            fontSize: 24,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w800,
                                            height: 0,
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 38,
                                top: 159,
                                child: SizedBox(
                                    width: 125,
                                    child: Text(
                                        '服務列表',
                                        style: TextStyle(
                                            color: Color(0xFF004D7D),
                                            fontSize: 24,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w800,
                                            height: 0,
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 45,
                                top: 26,
                                child: Container(
                                    width: 90,
                                    height: 90,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(
                                        children: [
                                            Positioned(
                                                left: 11.25,
                                                top: 11.25,
                                                child: Container(
                                                    width: 67.50,
                                                    height: 67.50,
                                                    child: Stack(children: [
                                                    
                                                    ]),
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 30,
                top: 197,
                child: Container(
                    width: 370,
                    height: 210,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 80,
                                child: Container(
                                    width: 370,
                                    height: 130,
                                    decoration: ShapeDecoration(
                                        color: Color(0xFFE3EBF6),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 0.50, color: Color(0xFFB5C5DF)),
                                            borderRadius: BorderRadius.circular(20),
                                        ),
                                        shadows: [
                                            BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 15,
                                                offset: Offset(0, 20),
                                                spreadRadius: 0,
                                            )
                                        ],
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 88,
                                top: 152,
                                child: Text(
                                    'RESUME',
                                    style: TextStyle(
                                        color: Color(0xFF004D7D),
                                        fontSize: 48,
                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w800,
                                        height: 0,
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 105,
                                top: 0,
                                child: Container(
                                    width: 160,
                                    height: 160,
                                    child: Stack(
                                        children: [
                                            Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                    width: 160,
                                                    height: 160,
                                                    decoration: ShapeDecoration(
                                                        color: Color(0xFFD9D9D9),
                                                        shape: OvalBorder(),
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 0,
                                                top: 5,
                                                child: Container(
                                                    width: 153,
                                                    height: 153,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: NetworkImage("https://via.placeholder.com/153x153"),
                                                            fit: BoxFit.fill,
                                                        ),
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                    width: 160,
                                                    height: 160,
                                                    decoration: ShapeDecoration(
                                                        shape: OvalBorder(
                                                            side: BorderSide(width: 10, color: Color(0xFFE3EBF6)),
                                                        ),
                                                    ),
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 300,
                                top: 92,
                                child: Text(
                                    '履\n歷',
                                    style: TextStyle(
                                        color: Color(0xFFB5C5DF),
                                        fontSize: 48,
                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w800,
                                        height: 0,
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 14,
                                top: 77,
                                child: Text(
                                    '6',
                                    style: TextStyle(
                                        color: Color(0xFFB5C5DF),
                                        fontSize: 96,
                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w800,
                                        height: 0,
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 16,
                                top: 182,
                                child: Container(
                                    width: 60,
                                    height: 5,
                                    decoration: BoxDecoration(color: Color(0xFFB5C5DF)),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 237,
                top: 100,
                child: Container(
                    width: 163,
                    height: 67,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 13,
                                child: Text(
                                    '2,024,223',
                                    style: TextStyle(
                                        color: Color(0xFF004D7D),
                                        fontSize: 32,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                    '目前成就',
                                    style: TextStyle(
                                        color: Color(0xFF004D7D),
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 0,
                                top: 52,
                                child: Text(
                                    '有效期限：2024/12/31',
                                    style: TextStyle(
                                        color: Color(0xFF004D7D),
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 30,
                top: 113,
                child: Text(
                    'Hi, 王小明',
                    style: TextStyle(
                        color: Color(0xFF004D7D),
                        fontSize: 32,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                    ),
                ),
            ),
        ],
    ),
);
  }
}
