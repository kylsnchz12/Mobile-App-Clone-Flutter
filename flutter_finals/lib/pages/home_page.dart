import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safe/flutter_icons_null_safe.dart';
import '../json/homepage_json.dart';

class HomePage extends StatefulWidget {
  final String img;
  const HomePage({super.key, required this.img});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
                width: size.height - 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 500,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/stbanner.png'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 500,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                Colors.black.withOpacity(0.95),
                                Colors.black.withOpacity(0)
                              ],
                                  end: Alignment.topCenter,
                                  begin: Alignment.bottomCenter)),
                        ),
                        SizedBox(
                          height: 500,
                          width: size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/stTitle.png',
                                width: 250,
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                "Exciting • Sci-Fi Drama • Sci-Fi Adventure",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "My List",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 13, left: 8, top: 2, bottom: 2),
                            child: Row(children: const [
                              Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                                size: 30,
                              ),
                              SizedBox(width: 5),
                              Text('Play',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600))
                            ]),
                          ),
                        ),
                        Column(
                          children: const [
                            Icon(
                              Icons.info_outline,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Info",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            'My List',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        const SizedBox(height: 8),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                                children: List.generate(myList.length, (index) {
                              return Container(
                                width: 110,
                                height: 160,
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(myList[index]['img']),
                                    ),
                                    borderRadius: BorderRadius.circular(7)),
                              );
                            })),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            'Popular on Netflix',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        const SizedBox(height: 8),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                                children:
                                    List.generate(popular.length, (index) {
                              return Container(
                                width: 110,
                                height: 160,
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(popular[index]['img']),
                                    ),
                                    borderRadius: BorderRadius.circular(7)),
                              );
                            })),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            'Netflix Originals',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        const SizedBox(height: 8),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                                children: List.generate(nf.length, (index) {
                              return Container(
                                width: 110,
                                height: 160,
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(nf[index]['img']),
                                    ),
                                    borderRadius: BorderRadius.circular(7)),
                              );
                            })),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/netflixIcon.ico',
                              width: 35,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.cast,
                                size: 27,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                AntDesign.search1,
                                size: 24,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Material(
                              color: Colors.black,
                              child: InkWell(
                                onTap: () {},
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3),
                                  child: Image.asset(widget.img,
                                      width: 30, height: 30, fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 17),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "TV Shows",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        "Movies",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: const [
                          Text(
                            "Categories",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 3),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
