import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FrontPage extends StatelessWidget {
  static const List<String> texts = [
    "New",
    "2025",
    "2024",
    "2023",
    "2022",
    "2021",
    "2020",
  ];
  static const List<String> images = [
    "assets/j.jpg",
    "assets/img1.jpg",
    "assets/img2.jpg",
    "assets/img3.jpg",
    "assets/img4.jpg",
    "assets/img6.jpg",
    "assets/img1.jpg",
  ];

  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.white),
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text(
              'the_dusky_one',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),

            SizedBox(width: 8),
            Icon(FontAwesomeIcons.angleDown, color: Colors.white, size: 20),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 150,
              child: Row(
                children: [
                  Container(
                    width: 150,
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(
                                    'assets/jv_3.jpg',
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 13,
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    12,
                                    137,
                                    226,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Mobile Devloper",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 7),
                          Text(
                            "Jeevitha Gunalan",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(height: 9),
                                    Text("7", style: TextStyle(fontSize: 20)),
                                    SizedBox(height: 3),
                                    Text(
                                      "posts",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: 9),
                                    Text("387", style: TextStyle(fontSize: 20)),
                                    SizedBox(height: 3),
                                    Text(
                                      "followers",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: 9),
                                    Text("672", style: TextStyle(fontSize: 20)),
                                    SizedBox(height: 3),
                                    Text(
                                      "followings",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.black,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 42,
                        vertical: 10,
                      ),
                    ),
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 42,
                        vertical: 10,
                      ),
                    ),

                    child: Text(
                      "Share Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 10,
                      ),
                    ),
                    child: Icon(FontAwesomeIcons.userPlus, color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              color: Colors.black,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(height: 5),
                      Container(
                        //color: Colors.black,
                        margin: EdgeInsets.all(3),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: index == 0
                              ? Icon(Icons.add, size: 40, color: Colors.black)
                              : ClipOval(
                                  child: Image.asset(
                                    images[index],
                                    fit: BoxFit.cover,
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                        ),
                      ),
                      Text(texts[index], style: TextStyle(color: Colors.white)),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Container(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(children: [Icon(FontAwesomeIcons.th)]),
                      Column(
                        children: [
                          Icon(FontAwesomeIcons.solidSquareCaretRight),
                        ],
                      ),
                      Column(children: [Icon(FontAwesomeIcons.tags)]),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Image.asset(images[index], fit: BoxFit.cover),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
