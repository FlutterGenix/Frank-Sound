import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:soundproject/siren2.dart';

class Policesiren extends StatelessWidget {
  Policesiren({super.key});
  List color = [
    Color(0xff19CFF8),
    Color(0xffF7D451),
    Color(0xffA7DABE),
    Color(0xffFFC19F),
  ];
  List image = [
    "images/Siren.png",
    "images/Alarm.png",
    "images/Siren (1).png",
    "images/Group 3 (1).png"
  ];
  List text = [
    "Police Siren 1",
    "Police Siren 2",
    "Police Siren 3",
    "Police Siren 4"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00142C),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
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
                        color: Color(0xffF7931E),
                        borderRadius: BorderRadius.circular(15)),
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
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Siren2(),
                            ));
                      },
                      child: Container(
                        width: 460,
                        height: 97,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: color[index]),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(image[index]),
                              Text(
                                text[index],
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffFFFFFF)),
                              )
                            ]),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
