import 'package:database/application/addstudent/add_student_bloc.dart';
import 'package:database/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class StudentDetails extends StatelessWidget {
  StudentDetails(
      {super.key,
      required this.name,
      required this.age,
      required this.classname,
      required this.phone,
      required this.id,
      required this.image1});

  String name, phone, classname, age;
  int id;
  Uint8List image1;

  late TextEditingController _nameController;

  late TextEditingController _ageController;

  late TextEditingController _classController;

  late TextEditingController _phoneController;

  // Uint8List? image;

  @override
  Widget build(BuildContext context) {
    _nameController = TextEditingController(text: name);
    _ageController = TextEditingController(text: age);
    _classController = TextEditingController(text: classname);
    _phoneController = TextEditingController(text: phone);

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Details'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          BlocBuilder<AddStudentBloc, AddStudentState>(
            builder: (context, state) {
              final image = state.image;
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: image != null
                    ? Image.memory(
                        image,
                        height: 200,
                        width: 200,
                      )
                    : Image.memory(
                        image1,
                        height: 200,
                        width: 200,
                      ),
              );
            },
          ),
          TextButton(
              onPressed: () {
                updateImage(context);
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectImage()));
              },
              child: const Text('Change Image')),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                //hintText: _nameController.text,
              ),
              validator: (value) {
                return value == null ||
                        value.isEmpty ||
                        !RegExp(r'^[a-zA-Z\s]{3,15}$').hasMatch(value)
                    ? 'Enter correct name'
                    : null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.number,
              controller: _ageController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                //hintText: _ageController.text,
              ),
              validator: (value) {
                return value == null ||
                        value.isEmpty ||
                        !RegExp(r'^[0-9]{1,2}$').hasMatch(value)
                    ? 'Enter correct age'
                    : null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: _classController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                //hintText: _classController.text,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.phone,
              controller: _phoneController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                // hintText: _phoneController.text,
              ),
              validator: (value) {
                return value == null ||
                        value.isEmpty ||
                        !RegExp(r'^[0-9]{10}$').hasMatch(value)
                    ? 'Enter valid phone number'
                    : null;
              },
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              dailogueBox(context);
              //replaceDetails(id);
              //print(_nameController.text);
            },
            icon: const Icon(Icons.add),
            label: const Text('Save'),
          ),
        ],
      ),
    );
  }

  // onAddStudentButtonClicked() async {
  void dailogueBox(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (ctx2) {
          return AlertDialog(
            title: const Text('Do you want to update'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: const Text('CANCEL')),
              BlocBuilder<AddStudentBloc, AddStudentState>(
                builder: (context, state) {
                  return TextButton(
                      onPressed: () {
                        final name = _nameController.text;
                        final age = _ageController.text;
                        final classname = _classController.text;
                        final phone = _phoneController.text;

                        if (name == name &&
                            age == age &&
                            classname == classname &&
                            phone == phone &&
                            image1 == state.image) {
                          return;
                        } else {
                          BlocProvider.of<AddStudentBloc>(ctx).add(
                              UpdateStudent(
                                  name: _nameController.text,
                                  age: _ageController.text,
                                  classname: _classController.text,
                                  number: _phoneController.text,
                                  image: state.image == null
                                      ? image1
                                      : state.image!,
                                  id: id));
                          // deleteStudent(data.id!);
                          // Navigator.of(ctx).pop();
                          // replaceDetails(widget.id);
                        }
                        Navigator.of(ctx2).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (ctx2) => HomeScreen()),
                            (Route) => false);
                      },
                      child: const Text('OK'));
                },
              ),
            ],
          );
        });
  }

  void updateImage(context) async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;

    // final imagePermanent = await saveFilePermanently(image.path);
    final temp1 = await image.readAsBytes();
    // this.image = temp;
    BlocProvider.of<AddStudentBloc>(context).add(UpdateImage(image1: temp1));
    // setState(() {

    // });
  }
}
