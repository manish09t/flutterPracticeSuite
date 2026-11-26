import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App with History',
      home: CounterAppHomePage(),
    );
  }
}

class CounterAppHomePage extends StatelessWidget {
  const CounterAppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.lime,
        centerTitle: true,
        title: Text(
          'Counter App with History',
          style: GoogleFonts.blackOpsOne(fontSize: 24, color: Colors.black),
        ),
      ),
      body: HomePageBody(),
    );
  }
}

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});
  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int count = 0;
  int totalCount = 0;
  List<String> history = [];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 300,
        height: 600,
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber.shade300,
        ),
        alignment: Alignment.center,
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'Count: $count',
              style: GoogleFonts.libreBaskerville(
                fontSize: 24,
                color: Colors.deepOrangeAccent,
              ),
            ),
            SizedBox(height: 20),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count++;
                      totalCount++;
                      history.add('+1');
                    });
                  },
                  child: Icon(Icons.add),
                ),
      
                SizedBox(width: 20),
      
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count = 0;
                      totalCount = 0;
                      history.clear();
                    });
                  },
      
                  child: Icon(Icons.restore),
                ),
      
                SizedBox(width: 20),
      
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count--;
                      totalCount++;
                      history.add('-1');
                    });
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
      
            SizedBox(height: 20),
      
            Text(
              'Total Count: $totalCount',
              style: GoogleFonts.libreBaskerville(
                fontSize: 24,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10),
      
            Column(
              children: [
                Container(
                  width: 300,
                  height: 47,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade200,
      
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(10),
                      topEnd: Radius.circular(10),
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Text(
                    'History',
                    style: GoogleFonts.libreBaskerville(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadiusDirectional.only(
                      bottomStart: Radius.circular(10),
                      bottomEnd: Radius.circular(10),
                    ),
                  ),
      
                  child: history.isEmpty
                      ? Center(
                          child: Text(
                            'No history yet',
                            style: GoogleFonts.libreBaskerville(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      : ListView.builder(
                    itemCount: history.length,
                    itemBuilder: (context, index) {
                      if (history[index] == '+1') {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add, color: Colors.green),
                            SizedBox(width: 10),
                            Text('Incremented by 1'),
                          ],
                        );
                      } else {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.remove, color: Colors.red),
                            SizedBox(width: 10),
                            Text('Decremented by 1'),
                          ],
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
