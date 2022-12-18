import 'package:flutter/material.dart';
import 'package:page_router/extension/extension.dart';
import 'package:page_router/pages/main_page.dart';
import 'package:page_router/pages/next_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const NextPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.to(const NextPage());
                },
                child: Text('次のページへ')),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  context.to(const MainPage());
                },
                child: Text('メインページへ')),
          ],
        ),
      ),
    );
  }
}
