import 'package:database/application/addstudent/add_student_bloc.dart';
import 'package:database/application/home/home_bloc.dart';
import 'package:database/db/model/data_model.dart';
import 'package:database/home.dart';
import 'package:database/list_student_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if(!Hive.isAdapterRegistered(StudentModel2Adapter().typeId)){
    Hive.registerAdapter(StudentModel2Adapter());
  }
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeBloc()),
        BlocProvider(create: (context) => AddStudentBloc())
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch:Colors.cyan,
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}