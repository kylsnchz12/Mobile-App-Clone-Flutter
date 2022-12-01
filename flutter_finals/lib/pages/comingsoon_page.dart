import 'package:flutter/material.dart';
import 'package:flutter_finals/json/comingsoon_json.dart';

class ComingSoonPage extends StatefulWidget {
  final String img;
  const ComingSoonPage({super.key, required this.img});

  @override
  State<ComingSoonPage> createState() => _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55), child: getAppBar()),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      elevation: 0,
      title: const Text(
        'Coming Soon',
        style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.cast,
            size: 27,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
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
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.white.withOpacity(0.9),
                      size: 28,
                    ),
                    const SizedBox(width: 15),
                    Text('Notifications',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 15,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                Icon(Icons.arrow_forward_ios,
                    size: 22, color: Colors.white.withOpacity(0.9))
              ],
            ),
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(soon.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 220,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(soon[index]['img']),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.2)),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        Stack(
                          children: [
                            Container(
                              height: 2.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.withOpacity(0.7)),
                            ),
                            soon[index]['duration']
                                ? Container(
                                    height: 2.5,
                                    width: size.width * soon[index]['value'],
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.red.withOpacity(0.7)),
                                  )
                                : Container(),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(soon[index]['title_img'], width: 120),
                            Row(
                              children: [
                                Column(
                                  children: const [
                                    Icon(
                                      Icons.notifications_none_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(height: 5),
                                    Text("Remind me",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 11))
                                  ],
                                ),
                                const SizedBox(width: 30),
                                Column(
                                  children: const [
                                    Icon(
                                      Icons.info_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(height: 5),
                                    Text("Info ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 11))
                                  ],
                                )
                              ],
                            ),
                          ]),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        soon[index]['date'],
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        soon[index]['title'],
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        soon[index]['description'],
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5), height: 1.4),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        soon[index]['type'],
                        style: const TextStyle(
                            color: Colors.white, height: 1.4, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
