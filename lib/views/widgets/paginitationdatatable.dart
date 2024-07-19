import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaginationGrid extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  final int _perPage = 10;
  final RxInt _currentPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => GridView.builder(
          controller: _scrollController
            ..addListener(() {
              if (_scrollController.position.pixels ==
                  _scrollController.position.maxScrollExtent) {
                _currentPage.value++;
              }
            }),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: _perPage * (_currentPage.value + 1),
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: Text('Item $index'),
              ),
            );
          },
        ),
      ),
    );
  }
}
