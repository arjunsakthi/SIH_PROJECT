import 'package:flutter/material.dart';

class AlcoholicAddiction extends StatefulWidget {
  const AlcoholicAddiction({super.key});

  @override
  State<AlcoholicAddiction> createState() => _AlcoholicAddictionState();
}

class _AlcoholicAddictionState extends State<AlcoholicAddiction>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ALCOHOL ADDICTION',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.home_filled),
          SizedBox(
            width: 6,
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10,
                      margin: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        'assest/undraw_Having_fun_re_vj4h.png',
                        fit: BoxFit.fill,
                        height: 250,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Text(
                    'Alcoholic Addiction',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'The Alcohol Disorders identification Test (AUDIT)',
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(
                    child: Text(
                      'DESCRIPTION',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'FACTS',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'ABOUT',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'MEDIA',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 285,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'The Alcohol Disorders identification Test (AUDIT)',
                      ),
                    ),
                    Text(
                      'The Alcohol Disorders identification Test (AUDIT)',
                    ),
                    Text(
                      'The Alcohol Disorders identification Test (AUDIT)',
                    ),
                    Text(
                      'The Alcohol Disorders identification Test (AUDIT)',
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.start_outlined),
              onPressed: () {},
              label: Text("Start Test"),
              style: ElevatedButton.styleFrom(elevation: 10),
            )
          ],
        ),
      ),
    );
  }
}
