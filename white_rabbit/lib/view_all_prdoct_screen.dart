import 'package:flutter/material.dart';

class ViewALlProducts extends StatefulWidget {
  const ViewALlProducts({Key? key}) : super(key: key);

  @override
  State<ViewALlProducts> createState() => _ViewALlProductsState();
}

class _ViewALlProductsState extends State<ViewALlProducts> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: const Text('data'),
    );
    
  }
}