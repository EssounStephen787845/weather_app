import 'package:flutter/material.dart';

class NextDayss extends StatefulWidget {
  const NextDayss({Key? key}) : super(key: key);

  @override
  State<NextDayss> createState() => _NextDayssState();
}

class _NextDayssState extends State<NextDayss> {
  bool tapped = false;

  isTapped() {
    setState(() {
      tapped = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Kyiv,Ukraine'),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 7,
          // ignore: avoid_types_as_parameter_names
          itemBuilder: (_, int) => ExpansionTile(
                leading: const Icon(Icons.handshake),
                title: const Text('data',style: TextStyle(fontSize:20,fontWeight: FontWeight.w500)),
                trailing: const Text('-11'),
                tilePadding: const EdgeInsets.all(20),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Row(children: const [
                      Text('data',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 10,
                      ),
                      Text('hello'),
                      SizedBox(
                        width: 100,
                      ),
                      Text('data',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 10,
                      ),
                      Text('hello'),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Row(children: const [
                      Text('data',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 10,
                      ),
                      Text('hello'),
                      SizedBox(
                        width: 100,
                      ),
                      Text('data',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 10,
                      ),
                      Text('hello'),
                    ]),
                  ),
                ],
              )),
    );
  }
}
