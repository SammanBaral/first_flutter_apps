import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible Expanded View'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child:  Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
              width: double.infinity,
              color: Colors.yellow,
                      ),
            ),
            // flexible ko flt:FlexFit.tight vaneko expanded
            // felx le ratio ma divide gardinxa
            Expanded( 
              flex: 1,
                child: Container(
                    width: double.infinity,
                    color: Colors.red,
                          ),
                ),
          ]
      ),
    )
    );
  }
}