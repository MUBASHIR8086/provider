import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provide_demo/provider_demo.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
   TextEditingController fristNumber = TextEditingController();
   TextEditingController secoundNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<ProviderDemo>(
          builder: (context, value, child) {
            return  Column(
            children: [
              const SizedBox(height: 50,),
              TextField(
                controller: fristNumber,
                decoration: const InputDecoration(
                  hintText: 'enter a number',
                  border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 10,),
             TextField(
              controller: secoundNumber,
                decoration: const InputDecoration(
                  hintText: 'enter a number',
                  border: OutlineInputBorder()
                ),
              ),
              Gap(10),
              ElevatedButton(onPressed: (){
                final first=fristNumber.text;
                final second=secoundNumber.text;

                if(int.tryParse(first)==null||int.tryParse(second)==null){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("iyh alla mole")));
                  return;
                }
                value.addnumber(first, second);
              
              }, child: Text("submit"),),
              Gap(10),
              if(value.isLoading)CircularProgressIndicator(),

              if(!value.isLoading)
              
              Text("${value.calcuvalue}")

             
            ],
          );
          },
        ),
      ),
    );
  }
}




