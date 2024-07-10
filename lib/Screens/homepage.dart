import 'package:flutter/material.dart';
import 'package:todoapp_provider/Providers/model.dart';
import 'package:todoapp_provider/Screens/addtaskScreen.dart';
import 'package:todoapp_provider/widgets/task_listview.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  HomePage({super.key});

 
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo[400],
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return SingleChildScrollView(
                      child: Container(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: AddTaskScreen(
                         
                           
                              
                          
                          )));
                });
          },
          child: const Icon(Icons.add),
        ),
        backgroundColor: Colors.teal[400],
        body: Container(
          padding:
              const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.playlist_add_check,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "ToDoyDo",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              Text(
                "${Provider.of<Model>(context).tasks.length}",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: listview_widget(
                 
                ),
              ))
            ],
          ),
        ));
  }
}
