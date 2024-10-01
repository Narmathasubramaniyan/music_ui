import 'package:flutter/material.dart';
import 'package:music_ui/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(
                height: 46 + 0,
              ),
              //back and menu button
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 80,
                    child: NeuBox(child: Icon(Icons.arrow_back)),
                  ),
                  Text(
                    "P L A Y L I S T",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 80,
                    child: NeuBox(child: Icon(Icons.menu)),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              //cover art,artist name,song name
              NeuBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('lib/images/cover.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Taylor Swift",
                                style: TextStyle(
                                    color: Colors.grey.shade700, fontSize: 18),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                "Delicate",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              //start time,suffle button,repeat button,end time
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("0:00"),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text("3:52"),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              //Linear bar
              NeuBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.8,
                  progressColor: Colors.green,
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              //previous song,pause play,skip next song
              const SizedBox(
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                        child: NeuBox(
                            child: Icon(
                      Icons.skip_previous,
                      size: 32,
                    ))),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: NeuBox(
                              child: Icon(
                            Icons.play_arrow,
                            size: 32,
                          )),
                        )),
                    Expanded(
                        child: NeuBox(
                            child: Icon(
                      Icons.skip_next,
                      size: 32,
                    )))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
