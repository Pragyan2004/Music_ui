import 'package:flutter/material.dart';
import 'package:music_ui/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}):super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(children: [
            //back btn and menu btn
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
SizedBox(
  height: 60,
  width: 60,
  child: NeuBox(
    child: Icon(Icons.arrow_back_ios),
  ),
),

              Text('P L A Y L I S T'),
          SizedBox(
            height: 60,
            width: 60,
            child: NeuBox(
              child: Icon(Icons.menu),
            ),
          ),
            ],
            ),

            const SizedBox(height: 10),
            //cover art,artist name,song name
            NeuBox(
              child: Column(
                children: [
                      ClipRRect(
              borderRadius:BorderRadius.circular(8),
              child: Image.asset('lib/images/music.png'),
            ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Kota the Friend',
                          style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          'Birdie',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,

                        ),),
                      ],
                    ),
                    const Icon(
                      Icons.favorite,
                    color: Colors.red,
                    size: 32,
                    ),
                  ],
                ),
              ),
            ],
            ),
        ),

            const SizedBox(height: 10),
            //controls
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Text('0:00'),
              Icon(Icons.shuffle),
                Icon(Icons.repeat),
                Text('4:33'),
                ],
            ),

            const SizedBox(height: 10),
            //linear progress
            NeuBox(
            child: LinearPercentIndicator(
              lineHeight: 10,
              percent: 0.5,
              progressColor: Colors.green,
              backgroundColor: Colors.transparent,
            ),
          ),

            //rows btn previous,pause,next song
            SizedBox(
              height: 80,
              child: Row(
                children:const [
                  Expanded(
                      child: NeuBox(child: Icon(Icons.skip_previous,
                      size: 32,
                      )),
                  ),
                      Expanded(
                          flex:2,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal:8.0),
                          child:NeuBox(child: Icon(Icons.pause,
                            size: 32,
                          )),
                          ),
                      ),
                          Expanded(
                              child: NeuBox(child: Icon(Icons.skip_next,
                                size: 32,
                              )),
                          ),
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
