import 'package:bmi_fitness/Resultscreen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    weight.text = '60.00';
    height.text = '170.00';
    age.text = '25';
  }

  bool select = false;
  Color male = Colors.black;
  Color female = Colors.black;
  int gender = 0;
  var weight = TextEditingController();
  var height = TextEditingController();
  var age = TextEditingController();
  var weightlist = ['Kg', 'lbs'];
  String initialweight = "Kg";
  var heightlist = ['m', 'cm', 'inch'];
  String initialheight = "cm";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "BMI Calculator",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontFamily: 'Alkatra',
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "Gender",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Alkatra',
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                        bottom: 15,
                        left: 15,
                      ),
                      child: InkWell(
                        onTap: (() {
                          male = Colors.green;
                          female = Colors.black;
                          gender = 0;
                          select = true;
                          setState(() {});
                        }),
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 64, 67, 68),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                              color: male,
                              width: 5,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.man_rounded,
                                color: Colors.white,
                                size: 100,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Alkatra',
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                        bottom: 15,
                        right: 15,
                      ),
                      child: InkWell(
                        onTap: (() {
                          female = Colors.green;
                          male = Colors.black;
                          gender = 1;
                          select = true;
                          setState(() {});
                        }),
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 64, 67, 68),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                              color: female,
                              width: 5,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.woman_rounded,
                                color: Colors.white,
                                size: 100,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Alkatra',
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "Weight",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Alkatra',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 20,
                              child: IconButton(
                                onPressed: (() {
                                  var CV = double.parse(weight.text.toString());
                                  setState(() {
                                    CV--;
                                    weight.text = (CV).toStringAsFixed(2);
                                  });
                                }),
                                iconSize: 35,
                                icon: Icon(
                                  Icons.remove_circle_outline,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 60,
                              child: Container(
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlignVertical: TextAlignVertical.center,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Alkatra',
                                    fontSize: 20,
                                  ),
                                  keyboardType: TextInputType.numberWithOptions(
                                    signed: false,
                                    decimal: true,
                                  ),
                                  controller: weight,
                                  decoration: InputDecoration(
                                    hintStyle:
                                        TextStyle(color: Colors.blueGrey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 20,
                              child: IconButton(
                                onPressed: (() {
                                  var CV = double.parse(weight.text.toString());
                                  setState(() {
                                    CV++;
                                    weight.text = (CV).toStringAsFixed(2);
                                  });
                                }),
                                iconSize: 35,
                                icon: Icon(
                                  Icons.add_circle_outline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: DropdownButton(
                            value: initialweight,
                            items: weightlist.map((String W) {
                              return DropdownMenuItem(
                                value: W,
                                child: Text(
                                  W,
                                  style: TextStyle(
                                    fontFamily: 'Alkatra',
                                    fontSize: 25,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newvalue) {
                              setState(() {
                                initialweight = newvalue!;
                                if (initialweight == 'lbs')
                                  weight.text = '132.00';
                                else
                                  weight.text = '60.00';
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    flex: 3,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "Height",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Alkatra',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 20,
                              child: IconButton(
                                onPressed: (() {
                                  var CV = double.parse(height.text.toString());
                                  if (initialheight == 'm') {
                                    double currentValue = CV * 100;
                                    currentValue--;
                                    CV = currentValue / 100;
                                  } else
                                    CV--;
                                  setState(() {
                                    height.text = (CV).toStringAsFixed(2);
                                  });
                                }),
                                iconSize: 35,
                                icon: Icon(
                                  Icons.remove_circle_outline,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 60,
                              child: Container(
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlignVertical: TextAlignVertical.center,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Alkatra',
                                    fontSize: 20,
                                  ),
                                  keyboardType: TextInputType.numberWithOptions(
                                    signed: false,
                                    decimal: true,
                                  ),
                                  controller: height,
                                  decoration: InputDecoration(
                                    hintStyle:
                                        TextStyle(color: Colors.blueGrey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 20,
                              child: IconButton(
                                onPressed: (() {
                                  var CV = double.parse(height.text.toString());
                                  if (initialheight == 'm') {
                                    double currentValue = CV * 100;
                                    currentValue++;
                                    CV = currentValue / 100;
                                  } else
                                    CV++;
                                  setState(() {
                                    height.text = (CV).toStringAsFixed(2);
                                  });
                                }),
                                iconSize: 35,
                                icon: Icon(
                                  Icons.add_circle_outline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: DropdownButton(
                            value: initialheight,
                            items: heightlist.map((String H) {
                              return DropdownMenuItem(
                                value: H,
                                child: Text(
                                  H,
                                  style: TextStyle(
                                    fontFamily: 'Alkatra',
                                    fontSize: 25,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newvalue) {
                              setState(() {
                                initialheight = newvalue!;
                                if (initialheight == 'm')
                                  height.text = '1.70';
                                else if (initialheight == 'cm')
                                  height.text = '170.00';
                                else
                                  height.text = '67.00';
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    flex: 3,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "Age",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Alkatra',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: (() {
                            var CV = double.parse(age.text.toString());
                            setState(() {
                              CV--;
                              age.text = (CV).toStringAsFixed(0);
                            });
                          }),
                          iconSize: 35,
                          icon: Icon(
                            Icons.remove_circle_outline,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: TextField(
                            cursorColor: Colors.black,
                            textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Alkatra',
                              fontSize: 20,
                            ),
                            keyboardType: TextInputType.numberWithOptions(
                              signed: false,
                              decimal: true,
                            ),
                            controller: age,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.blueGrey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: (() {
                            var CV = double.parse(age.text.toString());
                            setState(() {
                              CV++;
                              age.text = (CV).toStringAsFixed(0);
                            });
                          }),
                          iconSize: 35,
                          icon: Icon(
                            Icons.add_circle_outline,
                          ),
                        ),
                      ),
                    ],
                  ),
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
                    if (!select) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              "Please select Gender",
                              style: TextStyle(
                                fontFamily: 'Alkatra',
                              ),
                            ),
                            actions: [
                              ElevatedButton(
                                child: Text("OK"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              )
                            ],
                          );
                        },
                      );
                      return;
                    }
                    var userheight = double.parse(height.text.toString());
                    var userweight = double.parse(weight.text.toString());
                    var userage = int.parse(age.text.toString());
                    if (initialweight == 'lbs')
                      userweight = userweight * 0.4535;
                    if (initialheight == 'cm')
                      userheight = userheight / 100.00;
                    else if (initialheight == 'inch')
                      userheight = userheight * 0.0254;
                    var bmi = userweight / (userheight * userheight);
                    print(
                        "Gender: ${gender}\nAge: ${double.parse(age.text.toString())}\nWeight: ${double.parse(weight.text.toString())}\nHeight: ${double.parse(height.text.toString())}\n${initialweight}\n${initialheight}");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (((context) =>
                                Resultscreen(result: bmi)))));
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
                        "Calculate",
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
