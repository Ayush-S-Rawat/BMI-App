import 'package:flutter/material.dart';

class Resultscreen extends StatelessWidget {
  final double result;
  Color? resultcolor;
  String? text;
  String? category;
  String common =
      "A person should aim to maintain a healthy BMI. Working with a medical professional can help a person achieve and sustain a healthy weight.";
  Resultscreen({required this.result}) {
    if (result < 18.5) {
      category = "Underweight";
      text =
          "A person who is underweight may be at an increased risk of developing complications, including bone, teeth, and fertility problems.\nAdd snacks in between your routine and increase number of meals to gain some body mass.";
      resultcolor = Colors.blue;
    } else if (result <= 24.9) {
      category = "Normal";
      text = "Congratulations! you have a healthy BMI. Keep maintaining that.";
      resultcolor = Colors.green;
    } else if (result <= 30) {
      category = "Overweight";
      text =
          "An overweight person is exposed to health risks like High BP, heart disease, diabetes, etc. It is important for you to lower your BMI.\nShift to a healthy diet plan and start exercising daily for a sound Body and Mind.";
      resultcolor = Colors.yellow;
    } else if (result <= 39.9) {
      text =
          "An obese person is exposed to health risks like High BP, heart disease, diabetes, etc. It is important for you to lower your BMI.\nStart hitting gym and change your diet plan. Avoid intaking fats and high calorie food. Don't overloose much weight as it may cause weakness.";
      category = "Obese";
      resultcolor = Colors.orange;
    } else {
      text =
          "Your BMI is way too high. You are at a very high health risk. You should consult to the doctor as soon as possible.";
      category = "Dangerous";
      resultcolor = Colors.red;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              IconButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                icon: Icon(Icons.arrow_back_ios_new_rounded),
                color: Colors.white,
                iconSize: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "Result",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontFamily: 'Alkatra',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: resultcolor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                        color: Colors.white,
                        width: 5,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "${result.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontFamily: 'Alkatra',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "${category}",
                      style: TextStyle(
                        fontSize: 35,
                        color: resultcolor,
                        fontFamily: 'Alkatra',
                      ),
                    ),
                    Text(
                      "${text}\n\n${common}",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontFamily: 'Alkatra',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 50,
                ),
                child: InkWell(
                  onTap: (() {
                    Navigator.pop(context);
                  }),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Text(
                        "ReCalculate",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Alkatra',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
