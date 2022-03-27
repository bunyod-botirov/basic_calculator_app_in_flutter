import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

bool brakets = true;

class _HomePageState extends State<HomePage> {
  List<String> input = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                input.isEmpty ? "|" : input.join(),
                maxLines: 1,
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                icon: const Icon(Icons.backspace_outlined),
                color: Colors.lightGreen,
                onPressed: () {
                  input.removeLast();
                  setState(() {});
                },
              ),
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
              thickness: 1,
            ),
            buttons(),
          ],
        ),
      ),
    );
  }

  Widget buttons() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.53,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "C",
                    style: TextStyle(color: Colors.red, fontSize: 30.0),
                  ),
                  onPressed: () {
                    input.clear();
                    setState(() {});
                  },
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "( )",
                    style: TextStyle(color: Colors.lightGreen, fontSize: 30.0),
                  ),
                  onPressed: () {
                    if (brakets) {
                      input.add("(");
                      brakets = false;
                    } else {
                      input.add(")");
                      brakets = true;
                    }
                    setState(() {});
                  },
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "%",
                    style: TextStyle(color: Colors.lightGreen, fontSize: 30.0),
                  ),
                  onPressed: () {
                    input.add("%");
                    setState(() {});
                  },
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "/",
                    style: TextStyle(color: Colors.lightGreen, fontSize: 30),
                  ),
                  onPressed: () {
                    input.add("/");
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "7",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  onPressed: () {
                    setState(() {
                      input.add("7");
                      setState(() {});
                    });
                  },
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "8",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  onPressed: () {
                    input.add("8");
                    setState(() {});
                  },
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "9",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  onPressed: () {
                    input.add("9");
                    setState(() {});
                  },
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "X",
                    style: TextStyle(color: Colors.lightGreen, fontSize: 30),
                  ),
                  onPressed: () {
                    input.add("x");
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "4",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  onPressed: () {
                    input.add("4");
                    setState(() {});
                  },
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "5",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  onPressed: () {
                    input.add("5");
                    setState(() {});
                  },
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "6",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  onPressed: () {
                    input.add("6");
                    setState(() {});
                  },
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "--",
                    style: TextStyle(color: Colors.lightGreen, fontSize: 40),
                  ),
                  onPressed: () {
                    input.add("-");
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  onPressed: () {
                    input.add("1");
                    setState(() {});
                  },
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "2",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  onPressed: () {
                    input.add("2");
                    setState(() {});
                  },
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  onPressed: () {
                    input.add("3");
                    setState(() {});
                  },
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "+",
                    style: TextStyle(color: Colors.lightGreen, fontSize: 40),
                  ),
                  onPressed: () {
                    input.add("+");
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "+/-",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  onPressed: () {
                    setState(() {});
                  },
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "0",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  onPressed: () {
                    input.add("0");
                    setState(() {});
                  },
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[900],
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    ".",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  onPressed: () {
                    input.add(".");
                    setState(() {});
                  },
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  splashRadius: 32,
                  icon: const Text(
                    "=",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  onPressed: () {
                    for (var i = 0; i < input.length; i++) {
                      double result = 0;
                      List<String> temp = [];

                      if (input[i] == "+") {
                        temp = input.join().split("+").toList();
                        for (var l = 0; l < temp.length; l++) {
                          result += double.parse(temp[l]);
                        }
                        input.clear();
                        input.add(result.toString());
                      } else if (input[i] == "-") {
                        temp = input.join().split("-").toList();
                        result = double.parse(temp[0]);
                        for (var l = 1; l < temp.length; l++) {
                          result -= double.parse(temp[l]);
                        }
                        input.clear();
                        input.add(result.toString());
                      } else if (input[i] == "x") {
                        temp = input.join().split("x").toList();
                        result = double.parse(temp[0]);
                        for (var l = 1; l < temp.length; l++) {
                          result *= double.parse(temp[l]);
                        }
                        input.clear();
                        input.add(result.toString());
                      } else if (input[i] == "/") {
                        temp = input.join().split("/").toList();
                        result = double.parse(temp[0]);
                        for (var l = 1; l < temp.length; l++) {
                          result /= double.parse(temp[l]);
                        }
                        input.clear();
                        input.add(result.toString());
                      } else if (input[i] == "%") {
                        temp = input.join().split("%").toList();
                        result = double.parse(temp[0]);
                        for (var l = 1; l < temp.length; l++) {
                          result %= double.parse(temp[l]);
                        }
                        input.clear();
                        input.add(result.toString());
                      }
                    }
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
