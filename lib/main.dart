import 'package:flutter/material.dart';

void main() => runApp(const LiftApp());

class LiftApp extends StatelessWidget {
  const LiftApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const LifeHome(),
    );
  }
}

class LifeHome extends StatefulWidget {
  const LifeHome({super.key});

  @override
  State<LifeHome> createState() => _LifeHomeState();
}

class _LifeHomeState extends State<LifeHome> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_sharp),
            ),
            label: 'Messages',
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Life App'),
        backgroundColor: Colors.black12,
      ),
      body: <Widget>[
        /// Home page
        Container(
          color: Colors.black,
          padding: EdgeInsets.all(8.0),
          child: Expanded(
            child: Column(
              children: <Widget>[
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
                      child: Expanded(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const Text(
                            '個人檔案',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                              height: MediaQuery.of(context).size.height / 2.5,
                              child: const Text(
                                '供給',
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
                              debugPrint('需求');
                            },
                            child: Container(
                              color: Colors.black54,
                              height: MediaQuery.of(context).size.height / 2.5,
                              child: const Text(
                                '需求',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        /// Notifications page
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 1'),
                  subtitle: Text('This is a notification'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 2'),
                  subtitle: Text('This is a notification'),
                ),
              ),
            ],
          ),
        ),

        /// Messages page
        ListView.builder(
          reverse: true,
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Hello',
                    style: theme.textTheme.bodyLarge!
                        .copyWith(color: theme.colorScheme.onPrimary),
                  ),
                ),
              );
            }
            return Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  'Hi!',
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: theme.colorScheme.onPrimary),
                ),
              ),
            );
          },
        ),
      ][currentPageIndex],
    );
  }
}
