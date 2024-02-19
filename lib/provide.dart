import 'package:flutter/material.dart';

class Provide extends StatefulWidget {
  const Provide({super.key});

  @override
  State<Provide> createState() => _ProvideState();
}

class _ProvideState extends State<Provide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '供給',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.black87,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                margin: const EdgeInsets.all(10.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: InkWell(
                                  splashColor: Colors.blue,
                                  onTap: () {
                                    debugPrint('Card tapped.');
                                  },
                                  child: Container(
                                    color: Colors.black54,
                                    height: MediaQuery.of(context).size.height / 3.2,
                                    child: const Text(
                                      '宗教',
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                margin: const EdgeInsets.all(10.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: InkWell(
                                  splashColor: Colors.blue,
                                  onTap: () {
                                    debugPrint('Card tapped.');
                                  },
                                  child: Container(
                                    color: Colors.black54,
                                    height: MediaQuery.of(context).size.height / 3.2,
                                    child: const Text(
                                      '健身',
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Flexible(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                margin: const EdgeInsets.all(10.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: InkWell(
                                  splashColor: Colors.blue,
                                  onTap: () {
                                    debugPrint('Card tapped.');
                                  },
                                  child: Container(
                                    color: Colors.black54,
                                    height: MediaQuery.of(context).size.height / 3.2,
                                    child: const Text(
                                      '教育',
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                margin: const EdgeInsets.all(10.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: InkWell(
                                  splashColor: Colors.blue,
                                  onTap: () {
                                    debugPrint('Card tapped.');
                                  },
                                  child: Container(
                                    color: Colors.black54,
                                    height: MediaQuery.of(context).size.height / 3.2,
                                    child: const Text(
                                      '寵物',
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Flexible(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                margin: const EdgeInsets.all(10.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: InkWell(
                                  splashColor: Colors.blue,
                                  onTap: () {
                                    debugPrint('Card tapped.');
                                  },
                                  child: Container(
                                    color: Colors.black54,
                                    height: MediaQuery.of(context).size.height / 3.2,
                                    child: const Text(
                                      '養老',
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                margin: const EdgeInsets.all(10.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: InkWell(
                                  splashColor: Colors.blue,
                                  onTap: () {
                                    debugPrint('Card tapped.');
                                  },
                                  child: Container(
                                    color: Colors.black54,
                                    height: MediaQuery.of(context).size.height / 3.2,
                                    child: const Text(
                                      '交友',
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),

      ),
    );
  }
}
