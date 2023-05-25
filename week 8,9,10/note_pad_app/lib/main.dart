import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'model.dart';
import 'notifier.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

final noteProvider = StateNotifierProvider<Notifierx, List<Notes>>(
      (ref) => Notifierx(),
);

class Home extends ConsumerWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notesList = ref.watch(noteProvider);
    final titleController = TextEditingController();
    final contentController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes App'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.grey[300],
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      content: Column(
                        children: [
                          TextField(
                            controller: titleController,
                            decoration: const InputDecoration(
                              labelText: 'Title',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextField(
                            controller: contentController,
                            decoration: const InputDecoration(
                              labelText: 'Content',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            ref.read(noteProvider.notifier).addNote(           //////<----//////

                              Notes(
                                title: titleController.text,
                                content: contentController.text,
                              ),
                            );
                            Navigator.pop(context);
                          },
                          child: const Text('Add note'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            textStyle: const TextStyle(
                              fontSize: 18,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Add Notes'),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
              ),
            ),
            const SizedBox(height: 20),
            notesList.isEmpty
                ? const Text('')
                : Expanded(
              child: ListView.builder(
                itemCount: notesList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      notesList[index].title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      notesList[index].content,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        ref.read(noteProvider.notifier).removeNote(              ///////<----/////
                          notesList[index],
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
