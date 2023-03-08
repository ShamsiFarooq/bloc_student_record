import 'package:database/application/addstudent/add_student_bloc.dart';
import 'package:database/application/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class AddStudentWidget extends StatelessWidget {
  AddStudentWidget({super.key});

  final _nameController = TextEditingController();

  final _ageController = TextEditingController();

  final _classController = TextEditingController();

  final _phoneController = TextEditingController();

  final GlobalKey<FormState> nameFormKey = GlobalKey();

  final GlobalKey<FormState> ageFormKey = GlobalKey();

  final GlobalKey<FormState> classFormKey = GlobalKey();

  final GlobalKey<FormState> numberFormKey = GlobalKey();

  // Uint8List? image;
  bool _isDataEntered = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fill Student Data'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
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
                      : ElevatedButton.icon(
                          onPressed: () {
                            updatedImage(context);
                          },
                          icon: const Icon(Icons.image),
                          label: const Text('Add an image'),
                        ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: nameFormKey,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _nameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Name'),
                  validator: (value) {
                    return value == null ||
                            value.isEmpty ||
                            !RegExp(r'^[a-zA-Z\s]{3,15}$').hasMatch(value)
                        ? 'Enter valid Name'
                        : null;
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: ageFormKey,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.number,
                  controller: _ageController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Age'),
                  validator: (value) {
                    return value == null ||
                            value.isEmpty ||
                            !RegExp(r'^[0-9]{1,2}$').hasMatch(value)
                        ? 'Enter valid Age'
                        : null;
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: classFormKey,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _classController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Class'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: numberFormKey,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.phone,
                  controller: _phoneController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Phone Number'),
                  validator: (value) {
                    return value == null ||
                            value.isEmpty ||
                            !RegExp(r'^[0-9]{10}$').hasMatch(value)
                        ? 'Enter valid Phone number'
                        : null;
                  },
                ),
              ),
            ),
            BlocBuilder<AddStudentBloc, AddStudentState>(
              builder: (context, state) {
                final image = state.image;
                return ElevatedButton.icon(
                  onPressed: () {
                    if (nameFormKey.currentState!.validate() &&
                        ageFormKey.currentState!.validate() &&
                        classFormKey.currentState!.validate() &&
                        numberFormKey.currentState!.validate() &&
                        image != null) {
                      BlocProvider.of<AddStudentBloc>(context).add(AddStudent(
                          age: _ageController.text,
                          name: _nameController.text,
                          classname: _classController.text,
                          number: _phoneController.text,
                          image: image == null ? image : image));
                      BlocProvider.of<HomeBloc>(context).add(const Started());
                      _ageController.clear();
                      _nameController.clear();
                      _classController.clear();
                      _phoneController.clear();
                      BlocProvider.of<AddStudentBloc>(context)
                          .add((const UpdateImage(image1: null)));
                    } else {
                      final snackbar = SnackBar(content: Text('Add an image '));
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Add Student'),
                );
              },
            ),
            //  Visibility(
            //   visible: !_isDataEntered,
            //   child: const Text(
            //     'Data Entered Succesfully',
            //     style: TextStyle(color: Colors.green),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  void updatedImage(context) async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;

    final temp = await image.readAsBytes();
    // this.image = temp;
    BlocProvider.of<AddStudentBloc>(context).add(UpdateImage(image1: temp));
    // setState(() {

    // });
  }
}
