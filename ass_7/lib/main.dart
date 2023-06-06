import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF1F1F1F),
        body: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.network(
                        'https://avatars.githubusercontent.com/u/70934639?v=4',
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                    ),
                    const Icon(
                      Icons.add,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "MONDAY 16",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          day_num(
                              day: "Today ",
                              color: Colors.white.withOpacity(0.8)),
                          const day_num(day: "· ", color: Color(0xFFB2257F)),
                          const day_num(
                            day: "17  ",
                            color: Color(0xFF909090),
                          ),
                          const day_num(
                            day: "18  ",
                            color: Color(0xFF909090),
                          ),
                          const day_num(
                            day: "19  ",
                            color: Color(0xFF909090),
                          ),
                          const day_num(
                            day: "20  ",
                            color: Color(0xFF909090),
                          ),
                          const day_num(
                            day: "21  ",
                            color: Color(0xFF909090),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 570,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Card(
                          day_1_1: "11",
                          day_1_2: "30",
                          day_2_1: "12",
                          day_2_2: "20",
                          todo_1: "DESIGN",
                          todo_2: "MEETING",
                          mem_1: "ALEX",
                          mem_2: "HELENA",
                          mem_3: "NANA",
                          bgcolor: Color(0xFFFEF754),
                          plus: false,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Card(
                          day_1_1: "12",
                          day_1_2: "35",
                          day_2_1: "14",
                          day_2_2: "10",
                          todo_1: "DAILY",
                          todo_2: "PROJECT",
                          mem_1: "ME",
                          mem_2: "RICHARD",
                          mem_3: "CIRY",
                          bgcolor: Color(0xFF9C6BCE),
                          plus: true,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Card(
                          day_1_1: "15",
                          day_1_2: "00",
                          day_2_1: "16",
                          day_2_2: "30",
                          todo_1: "WEEKLY",
                          todo_2: "PLANNIG",
                          mem_1: "DEN",
                          mem_2: "NANA",
                          mem_3: "MARK",
                          bgcolor: Color(0xFFBCEE4B),
                          plus: false,
                        ),
                      ],
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

class Card extends StatelessWidget {
  final String day_1_1,
      day_1_2,
      day_2_1,
      day_2_2,
      todo_1,
      todo_2,
      mem_1,
      mem_2,
      mem_3;

  final Color bgcolor;
  final bool plus;
  const Card(
      {super.key,
      required this.day_1_1,
      required this.day_1_2,
      required this.day_2_1,
      required this.day_2_2,
      required this.todo_1,
      required this.todo_2,
      required this.mem_1,
      required this.mem_2,
      required this.mem_3,
      required this.bgcolor,
      required this.plus});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            // color: const Color(0xFFFEF754),
            color: bgcolor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          day_1_1,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          day_1_2,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          day_2_1,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          day_2_2,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          todo_1,
                          style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          todo_2,
                          style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              mem_1,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              mem_2,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              mem_3,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              plus ? "+4" : "",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class day_num extends StatelessWidget {
  final String day;
  final Color color;

  const day_num({super.key, required this.day, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(day,
        style: TextStyle(
          color: color,
          fontSize: 40,
          fontWeight: FontWeight.w600,
        ));
  }
}
