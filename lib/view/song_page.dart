import 'package:flutter/material.dart';
import 'package:music_player/components/neu_box.dart';


class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(child: Icon(Icons.arrow_back_ios),),
                  ),
                  Text('P L A Y L I S T'),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(child: Icon(Icons.menu),),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              NeuBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('lib/assets/cover_art.png'),
                    ),
                    Padding(padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kota The Friend',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.grey.shade700
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Bridge',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 32,
                        ),
                      ],
                    ))
                  ],
                )
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('0:00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4:22')
                ],
              ),
              const SizedBox(height: 30),
              const NeuBox(child: LinearProgressIndicator(
                minHeight: 8,
                value: 0.8,
                color: Colors.green,
                backgroundColor: Colors.transparent,
              )),
              const SizedBox(height: 25),
              SizedBox(
                height: 80,
                child: Row(
                  children: const [
                    Expanded(
                      child: NeuBox(child: Icon(Icons.skip_previous, size: 32,)),

                    ),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: NeuBox(child: Icon(Icons.play_arrow, size: 32,)),),
                    ),
                    Expanded(
                        child: NeuBox(child: Icon(Icons.skip_next, size: 32,))
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      )
    );
  }
}
