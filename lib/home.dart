import 'package:flutter/material.dart';
import 'package:soundproject/policesiren.dart';

class Home extends StatelessWidget {
  Home({super.key});
  List color = [Color(0xff19CFF8), Color(0xffA049C9), Color(0xffF7931E)];
  List image = ["images/car.png", "images/Frame (3).png", "images/Group.png"];
  List text = ["Police serin", "Fart Sound", "Air Horn"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00142C),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  width: 183,
                  child: Text(
                    "Air Horn Prank Funs Sound",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFFFFFF)),
                  ),
                ),
                Container(
                  height: 59,
                  width: 59,
                  decoration: BoxDecoration(
                      color: Color(0xffF7931E),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset("images/lock.png"),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Policesiren()),
                            );
                          },
                          child: Container(
                            height: 185,
                            width: 460,
                            decoration: BoxDecoration(
                                color: color[index],
                                borderRadius: BorderRadius.circular(15)),
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
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
