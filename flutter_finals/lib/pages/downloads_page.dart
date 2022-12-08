import 'package:flutter/material.dart';
import 'package:flutter_finals/pages/home_page.dart';
import 'package:flutter_finals/profile_setting.dart';

class DownloadPage extends StatefulWidget {
  final String img;
  final String name;
  const DownloadPage({super.key, required this.img, required this.name});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
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
      elevation: 0.0,
      title: const Text(
        "My Downloads",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
            icon: const Icon(
              Icons.collections_bookmark,
              size: 28,
            ),
            onPressed: () {}),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
              Material(
                color: Colors.black,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (_, __, ___) => ProfileSetting(
                              img: widget.img, name: widget.name)),
                    );
                  },
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: const [
                Icon(Icons.info_outline, color: Colors.white),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Smart Downloads",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "ON",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
                Expanded(child: SizedBox()),
                Icon(Icons.edit_outlined, color: Colors.white),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Column(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey.withOpacity(0.2)),
              child: Center(
                child: Icon(
                  Icons.file_download,
                  size: 80,
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Never be without Netflix",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Text(
                "Download shows and movies so you'll never be without something to watch even when you're offline",
                style: TextStyle(
                    color: Colors.white,
                    height: 1.5,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              HomePage(img: widget.img, name: widget.name)));
                },
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: const Center(
                    child: Text(
                      "See What You Can Download",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const Spacer()
      ],
    );
  }
}
