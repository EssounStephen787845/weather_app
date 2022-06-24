import 'package:flutter/material.dart';

import 'second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<FirstScreen> {
  final String a = 'Ukraine';

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("images/weather.jpg"), context);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('images/weather.jpg'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('Kyiv,$a'),
          actions: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: [
            Align(
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const Text(
                    'Today',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text('wed,3 Dec',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  const SizedBox(
                    height: 25,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                          text: '-1',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 70,
                              fontWeight: FontWeight.w300)),
                      WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(1, -35),
                          child: const Text(
                            'c',
                            //superscript is usually smaller in size
                            textScaleFactor: 0.7,
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('Feels like -3',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        const Text(
                          'Today',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        const Text(
                          'Tomorrow',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const NextDayss()));
                          },
                          child: const Text(
                            'Next 7 day >',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 7,
                child: ListView.builder(
                    itemCount: 30,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, int) =>
                        column(text: 'Now', text2: '-3', icon: Icons.cloud)),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white),
                height: MediaQuery.of(context).size.height / 3.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            smallText(text: 'sunrise'),
                            largeText(text: 'hello world')
                          ],
                        ),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            smallText(text: 'sunset'),
                            largeText(text: 'hello world')
                          ],
                        )
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            smallText(text: 'Precipitate'),
                            largeText(text: 'hello world')
                          ],
                        ),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            smallText(text: 'Humidity'),
                            largeText(text: 'hello world')
                          ],
                        )
                      ],
                    ),
                     const Divider(
                      color: Colors.grey,thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            smallText(text: 'wind'),
                            largeText(text: 'hello world')
                          ],
                        ),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            smallText(text: 'Pressure'),
                            largeText(text: 'hello world')
                          ],
                        )
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Text largeText({String? text}) {
    return Text(
      text!.toUpperCase(),
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Text smallText({String? text}) {
    return Text(text!.toUpperCase(),
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.grey));
  }

  Align column({String? text, String? text2, IconData? icon}) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Text(
            text!,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Container(
                height: MediaQuery.of(context).size.height / 10,
                width: 40,
                foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(111, 0, 0, 0)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Icon(icon), Text(text2!)])),
          ),
        ],
      ),
    );
  }
}
