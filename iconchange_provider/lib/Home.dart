

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:password_provider/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 120,
              color: Colors.white,
              child: Consumer<Providerdemo>(
                builder: (context, value, child) {
                  return Icon(
                    value.currentIcon, 
                    size: 60,
                  );
                },
              ),
            ),
            Gap(10),
            Consumer<Providerdemo>(
              builder: (context, provider, child) {
                return ElevatedButton(
                  onPressed: () {
                    provider.updateIcon(Icons.home);
                  },
                  child: const Icon(Icons.home),
                );
              },
            ),
            const Gap(10),
            Consumer<Providerdemo>(
              builder: (context,value, child) {
                return ElevatedButton(
                  onPressed: () {
                    value.updateIcon(Icons.abc);
                  },
                  child: const Icon(Icons.abc),
                );
              },
            ),
            const Gap(10),
            Consumer<Providerdemo>(
              builder: (context, value, child) {
                return ElevatedButton(
                  onPressed: () {
                    value.updateIcon(Icons.read_more);
                  },
                  child: const Icon(Icons.read_more),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
