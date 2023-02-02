import 'package:flutter/material.dart';
import 'package:graduation/components/question_page_button.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String answer = "";
  bool isTouching1 = false;
  bool isTouching2 = false;
  bool isTouching3 = false;
  bool isTouching4 = false;
  handleTouch(
    bool confirmTouch1,
    bool confirmTouch2,
  ) {
    setState(() {
      isTouching1 = confirmTouch1;
      isTouching1 = confirmTouch2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 11,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 1,
                                  child: Text(
                                    "Food",
                                    maxLines: 15,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(23),
                                        fontFamily: "Poppins3",
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        height: 1.8),
                                  ),
                                ),
                                //    SizedBox(height: SizeConfig.screenHeight*0.04,),
                                Column(
                                  children: [
                                    Text(
                                      "Q 1",
                                      style: TextStyle(
                                          fontSize:
                                              getProportionateScreenWidth(24),
                                          fontFamily: "Poppins",
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      "of 9",
                                      style: TextStyle(
                                          fontSize:
                                              getProportionateScreenWidth(14),
                                          fontFamily: "Poppins3",
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Q1_mainColor,
                          borderRadius: BorderRadius.only(
                              // topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(40))),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      // color: Colors.purple,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: SizedBox(
                                  height: SizeConfig.screenHeight * 0.011)),
                          Expanded(
                            flex: 6,
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/q1_img.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                                "How would you best describe your meals in the university?",
                                style: questionsStyle),
                          ),
                          Listener(
                            onPointerDown: (event) => setState(() {
                              isTouching1 = true;
                              isTouching2 = false;
                              isTouching3 = false;
                              isTouching4 = false;
                            }),
                            // onPointerUp: (event) => setState(() {
                            //   isTouching = false;
                            // }),

                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 12, right: 12, top: 7, bottom: 7),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: borderColor, width: 2),
                                  // color: Q1_mainColor,
                                  color: isTouching1 == true
                                      ? Q1_mainColor
                                      : Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(20))),
                              child: RadioListTile(
                                  activeColor: LightModeMainColor,
                                  title: Text("Meat in every meal",
                                      style: answersStyle),
                                  value: "Meat in every meal",
                                  groupValue: answer,
                                  onChanged: (value) {
                                    setState(() {
                                      answer = value.toString();
                                    });
                                  }),
                            ),
                          ),
                          Listener(
                            onPointerDown: (event) => setState(() {
                              isTouching1 = false;
                              isTouching2 = true;
                              isTouching3 = false;
                              isTouching4 = false;
                            }),
                            // onPointerUp: (event) => setState(() {
                            //   isTouching2 = false;
                            // }),
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 12, right: 12, top: 7, bottom: 7),
                              decoration: BoxDecoration(
                                  color: isTouching2 == true
                                      ? Q1_mainColor
                                      : Colors.white,
                                  border:
                                      Border.all(color: borderColor, width: 2),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(20))),
                              child: RadioListTile(
                                  activeColor: LightModeMainColor,
                                  title: Text(
                                    "Meat in some meals",
                                    style: answersStyle,
                                  ),
                                  value: "Meat in some meals",
                                  groupValue: answer,
                                  onChanged: (value) {
                                    setState(() {
                                      answer = value.toString();
                                    });
                                  }),
                            ),
                          ),
                          Listener(
                            onPointerDown: (event) => setState(() {
                              isTouching1 = false;
                              isTouching2 = false;
                              isTouching3 = true;
                              isTouching4 = false;
                            }),
                            // onPointerUp: (event) => setState(() {
                            //   isTouching3= false;
                            // }),
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 12, right: 12, top: 7, bottom: 7),
                              decoration: BoxDecoration(
                                  color: isTouching3 == true
                                      ? Q1_mainColor
                                      : Colors.white,
                                  border:
                                      Border.all(color: borderColor, width: 2),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(20))),
                              child: RadioListTile(
                                  title: Text(
                                    "Meat very rarely",
                                    style: answersStyle,
                                  ),
                                  activeColor: LightModeMainColor,
                                  value: "Meat very rarely",
                                  groupValue: answer,
                                  onChanged: (value) {
                                    setState(() {
                                      answer = value.toString();
                                    });
                                  }),
                            ),
                          ),
                          Listener(
                            onPointerDown: (event) => setState(() {
                              isTouching1 = false;
                              isTouching2 = false;
                              isTouching3 = false;
                              isTouching4 = true;
                            }),
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 12, right: 12, top: 7, bottom: 7),
                              decoration: BoxDecoration(
                                  color: isTouching4 == true
                                      ? Q1_mainColor
                                      : Colors.white,
                                  border:
                                      Border.all(color: borderColor, width: 2),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(20))),
                              child: RadioListTile(
                                  title: Text(
                                    "Vegetarian",
                                    style: answersStyle,
                                  ),
                                  activeColor: LightModeMainColor,
                                  value: "Vegetarian",
                                  groupValue: answer,
                                  onChanged: (value) {
                                    setState(() {
                                      answer = value.toString();
                                    });
                                  }),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: SizedBox(
                                  height: SizeConfig.screenHeight * 0.011)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.06),
          Expanded(
              flex: 1,
              child: Container(
                  //  color: Colors.lightBlue,
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () => () {},
                      child: Text(
                        "Prev",
                        style: TextStyle(fontSize: 23, color: Q1_mainColor),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20))),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 44),
                        primary: Colors.white,
                        backgroundColor: prevButtonColor,
                      )),
                  ElevatedButton(
                      onPressed: () => () {},
                      child: Text(
                        "Next",
                        style: TextStyle(fontSize: 23, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20))),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 44),
                        primary: Colors.white,
                        backgroundColor: Q1_mainColor,
                      )),
                ],
              )))
        ],
      ),
    );
  }
}
