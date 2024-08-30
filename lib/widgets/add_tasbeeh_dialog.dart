import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTasbeehDialog extends StatefulWidget {
  Function function;

  AddTasbeehDialog({super.key, required this.function});

  @override
  State<AddTasbeehDialog> createState() => _AddTasbeehDialogState();
}

class _AddTasbeehDialogState extends State<AddTasbeehDialog> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Material(
        color: const Color(0xffFBF8F1),
        borderRadius: BorderRadius.circular(18),
        child: SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Add To Sibha",
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: textEditingController,
                onChanged: (ca){
                
                },textAlign: TextAlign.center,
                decoration:  const InputDecoration(hintText: "Enter Custom Zikr",),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {
                        if (textEditingController.text.isEmpty) {
                        } else {
                          widget.function(textEditingController.text);
                
                        }
                      },
                      child:  const Text("Add")),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child:  const Text("cancel")),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      
    );
  }
}
