import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class NoteScreen extends StatefulWidget {
  static const String screenRoute ='note_screen';
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  List<String> notes = [];
  TextEditingController noteInputController = TextEditingController();
  @override
  void initState() {
    super.initState();
    loadNotes();
  }
   void loadNotes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      notes = prefs.getStringList('notes') ?? [];
    });
  }
  void saveNotes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('notes', notes);
  }
void addNote() {
    String noteText = noteInputController.text.trim();
    if (noteText.isNotEmpty) {
      setState(() {
        notes.add(noteText);
      });
      saveNotes();
      noteInputController.text = '';
    }
  }
 void deleteNoteAt(int index) {
    setState(() {
      notes.removeAt(index);
    });
    saveNotes();
  }
 void editNoteAt(int index) {
    String updatedNoteText = notes[index];
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController editController =
            TextEditingController(text: updatedNoteText);
        return AlertDialog(
          title: Text('تعديل الملاحظة'),
          content: TextField(
            controller: editController,
            decoration: InputDecoration(hintText: 'اكتب ملاحظة'),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('حفظ'),
              onPressed: () {
                setState(() {
                  notes[index] = editController.text;
                });
                saveNotes();
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('إلغاء'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
   title: const Row(
          children: [
           
            Text('Note Applction')
          ],
        ),
        
 ),
      backgroundColor: Color.fromARGB(255, 158, 222, 214),
        body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: noteInputController,
              decoration: InputDecoration(hintText: 'اكتب ملاحظة'),
            ),
          ),
          ElevatedButton(
            onPressed: addNote,
            child: Text('إضافة'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(notes[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          editNoteAt(index);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          deleteNoteAt(index);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
        
        
        
        
    
  
