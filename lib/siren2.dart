import 'package:flutter/material.dart';

class Siren2 extends StatefulWidget {
  Siren2({super.key});

  @override
  State<Siren2> createState() => _Siren2State();
}

class _Siren2State extends State<Siren2> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00142C),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 59,
                    height: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffF7931E),
                    ),
                    child: Image.asset("images/Back (2).png"),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "Police Siren",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 480,
              height: 190,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff19CFF8)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('images/Siren.png'),
                  Text(
                    "Police Siren 1",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFFFFFF)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Loop',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF)),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  'off',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF)),
                ),
                SizedBox(
                  width: 30,
                ),
                Switch(
                    activeColor: Colors.white,
                    activeTrackColor: Color(0xffF7931E),
                    inactiveThumbColor: Color(0xffffffff),
                    inactiveTrackColor: Color(0xff0000000),
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    }),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'on',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 480,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffF7931E),
                ),
                child: Center(
                  child: Text(
                    'Play',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
