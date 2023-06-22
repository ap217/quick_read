import 'package:flutter/material.dart';
import 'detail_view.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;
  NewsContainer(
      {super.key,
      required this.imgUrl,
      required this.newsDes,
      required this.newsCnt,
      required this.newsHead,
      required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
            child: Container(
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(8), // Adjust the value as needed
                  child: FadeInImage.assetNetwork(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                    placeholder: "assets/img/placeholder.gif",
                    image: imgUrl == "" ? "assets/img/placeholder.gif" : imgUrl,
                  ),
                )),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Divider(
                color: Colors.black,
              ),
              // const SizedBox(
              //   height: 18,
              // ),
              Text(
                newsHead.length > 90
                    ? "${newsHead.substring(0, 90)}..."
                    : newsHead,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Divider(
                color: Colors.black,
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Text(
                newsDes,
                style: const TextStyle(fontSize: 14, color: Colors.black38),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                newsCnt != "--"
                    ? newsCnt.length > 400
                        ? newsCnt.substring(0, 400)
                        : "${newsCnt.toString().substring(0, newsCnt.length - 15)}.."
                    : newsCnt,
                style: const TextStyle(fontSize: 18),
              ),
            ]),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/img/QuickRead.png"),
                ),
                Spacer(),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailViewScreen(newsUrl: newsUrl),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 26, 87, 137),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10)),
                    child: const Text("Read More")),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
