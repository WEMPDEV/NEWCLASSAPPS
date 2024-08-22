import 'package:flutter/material.dart';
import 'package:pied_piper11/MultiChildLayout.dart';
import 'package:pied_piper11/SingleChildLayout.dart';
import 'package:pied_piper11/myprofile.dart';

class tabBars extends StatefulWidget {
  const tabBars({super.key});

  @override
  State<tabBars> createState() => _tabBarsState();
}

class _tabBarsState extends State<tabBars> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose(){
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab Bar Views'),
        centerTitle: true,
        backgroundColor: Colors.white,
        bottom:  TabBar(
            controller:  _tabController,
            tabs: const [
          Tab(icon: Icon(Icons.home
          ),),
          Tab(icon: Icon(Icons.person
          ),),
          Tab(icon: Icon(Icons.verified
          ),),
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          myprofile(),
          SingleChildWidget(),
          MultiChildLayout(),
        ],
      ),
    );
  }
}
