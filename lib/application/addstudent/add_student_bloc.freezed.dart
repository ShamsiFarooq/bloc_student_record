// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddStudentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String age, String classname,
            String number, Uint8List image)
        addStudent,
    required TResult Function(String name, String age, String classname,
            String number, Uint8List image, int id)
        updateStudent,
    required TResult Function(Uint8List? image1) updateImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String age, String classname, String number,
            Uint8List image)?
        addStudent,
    TResult? Function(String name, String age, String classname, String number,
            Uint8List image, int id)?
        updateStudent,
    TResult? Function(Uint8List? image1)? updateImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String age, String classname, String number,
            Uint8List image)?
        addStudent,
    TResult Function(String name, String age, String classname, String number,
            Uint8List image, int id)?
        updateStudent,
    TResult Function(Uint8List? image1)? updateImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(UpdateStudent value) updateStudent,
    required TResult Function(UpdateImage value) updateImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStudent value)? addStudent,
    TResult? Function(UpdateStudent value)? updateStudent,
    TResult? Function(UpdateImage value)? updateImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(UpdateImage value)? updateImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStudentEventCopyWith<$Res> {
  factory $AddStudentEventCopyWith(
          AddStudentEvent value, $Res Function(AddStudentEvent) then) =
      _$AddStudentEventCopyWithImpl<$Res, AddStudentEvent>;
}

/// @nodoc
class _$AddStudentEventCopyWithImpl<$Res, $Val extends AddStudentEvent>
    implements $AddStudentEventCopyWith<$Res> {
  _$AddStudentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddStudentCopyWith<$Res> {
  factory _$$AddStudentCopyWith(
          _$AddStudent value, $Res Function(_$AddStudent) then) =
      __$$AddStudentCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String age,
      String classname,
      String number,
      Uint8List image});
}

/// @nodoc
class __$$AddStudentCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$AddStudent>
    implements _$$AddStudentCopyWith<$Res> {
  __$$AddStudentCopyWithImpl(
      _$AddStudent _value, $Res Function(_$AddStudent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? classname = null,
    Object? number = null,
    Object? image = null,
  }) {
    return _then(_$AddStudent(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      classname: null == classname
          ? _value.classname
          : classname // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$AddStudent with DiagnosticableTreeMixin implements AddStudent {
  const _$AddStudent(
      {required this.name,
      required this.age,
      required this.classname,
      required this.number,
      required this.image});

  @override
  final String name;
  @override
  final String age;
  @override
  final String classname;
  @override
  final String number;
  @override
  final Uint8List image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddStudentEvent.addStudent(name: $name, age: $age, classname: $classname, number: $number, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddStudentEvent.addStudent'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('classname', classname))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStudent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.classname, classname) ||
                other.classname == classname) &&
            (identical(other.number, number) || other.number == number) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, age, classname, number,
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStudentCopyWith<_$AddStudent> get copyWith =>
      __$$AddStudentCopyWithImpl<_$AddStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String age, String classname,
            String number, Uint8List image)
        addStudent,
    required TResult Function(String name, String age, String classname,
            String number, Uint8List image, int id)
        updateStudent,
    required TResult Function(Uint8List? image1) updateImage,
  }) {
    return addStudent(name, age, classname, number, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String age, String classname, String number,
            Uint8List image)?
        addStudent,
    TResult? Function(String name, String age, String classname, String number,
            Uint8List image, int id)?
        updateStudent,
    TResult? Function(Uint8List? image1)? updateImage,
  }) {
    return addStudent?.call(name, age, classname, number, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String age, String classname, String number,
            Uint8List image)?
        addStudent,
    TResult Function(String name, String age, String classname, String number,
            Uint8List image, int id)?
        updateStudent,
    TResult Function(Uint8List? image1)? updateImage,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(name, age, classname, number, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(UpdateStudent value) updateStudent,
    required TResult Function(UpdateImage value) updateImage,
  }) {
    return addStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStudent value)? addStudent,
    TResult? Function(UpdateStudent value)? updateStudent,
    TResult? Function(UpdateImage value)? updateImage,
  }) {
    return addStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(UpdateImage value)? updateImage,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(this);
    }
    return orElse();
  }
}

abstract class AddStudent implements AddStudentEvent {
  const factory AddStudent(
      {required final String name,
      required final String age,
      required final String classname,
      required final String number,
      required final Uint8List image}) = _$AddStudent;

  String get name;
  String get age;
  String get classname;
  String get number;
  Uint8List get image;
  @JsonKey(ignore: true)
  _$$AddStudentCopyWith<_$AddStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStudentCopyWith<$Res> {
  factory _$$UpdateStudentCopyWith(
          _$UpdateStudent value, $Res Function(_$UpdateStudent) then) =
      __$$UpdateStudentCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String age,
      String classname,
      String number,
      Uint8List image,
      int id});
}

/// @nodoc
class __$$UpdateStudentCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$UpdateStudent>
    implements _$$UpdateStudentCopyWith<$Res> {
  __$$UpdateStudentCopyWithImpl(
      _$UpdateStudent _value, $Res Function(_$UpdateStudent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? classname = null,
    Object? number = null,
    Object? image = null,
    Object? id = null,
  }) {
    return _then(_$UpdateStudent(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      classname: null == classname
          ? _value.classname
          : classname // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateStudent with DiagnosticableTreeMixin implements UpdateStudent {
  const _$UpdateStudent(
      {required this.name,
      required this.age,
      required this.classname,
      required this.number,
      required this.image,
      required this.id});

  @override
  final String name;
  @override
  final String age;
  @override
  final String classname;
  @override
  final String number;
  @override
  final Uint8List image;
  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddStudentEvent.updateStudent(name: $name, age: $age, classname: $classname, number: $number, image: $image, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddStudentEvent.updateStudent'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('classname', classname))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStudent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.classname, classname) ||
                other.classname == classname) &&
            (identical(other.number, number) || other.number == number) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, age, classname, number,
      const DeepCollectionEquality().hash(image), id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStudentCopyWith<_$UpdateStudent> get copyWith =>
      __$$UpdateStudentCopyWithImpl<_$UpdateStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String age, String classname,
            String number, Uint8List image)
        addStudent,
    required TResult Function(String name, String age, String classname,
            String number, Uint8List image, int id)
        updateStudent,
    required TResult Function(Uint8List? image1) updateImage,
  }) {
    return updateStudent(name, age, classname, number, image, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String age, String classname, String number,
            Uint8List image)?
        addStudent,
    TResult? Function(String name, String age, String classname, String number,
            Uint8List image, int id)?
        updateStudent,
    TResult? Function(Uint8List? image1)? updateImage,
  }) {
    return updateStudent?.call(name, age, classname, number, image, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String age, String classname, String number,
            Uint8List image)?
        addStudent,
    TResult Function(String name, String age, String classname, String number,
            Uint8List image, int id)?
        updateStudent,
    TResult Function(Uint8List? image1)? updateImage,
    required TResult orElse(),
  }) {
    if (updateStudent != null) {
      return updateStudent(name, age, classname, number, image, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(UpdateStudent value) updateStudent,
    required TResult Function(UpdateImage value) updateImage,
  }) {
    return updateStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStudent value)? addStudent,
    TResult? Function(UpdateStudent value)? updateStudent,
    TResult? Function(UpdateImage value)? updateImage,
  }) {
    return updateStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(UpdateImage value)? updateImage,
    required TResult orElse(),
  }) {
    if (updateStudent != null) {
      return updateStudent(this);
    }
    return orElse();
  }
}

abstract class UpdateStudent implements AddStudentEvent {
  const factory UpdateStudent(
      {required final String name,
      required final String age,
      required final String classname,
      required final String number,
      required final Uint8List image,
      required final int id}) = _$UpdateStudent;

  String get name;
  String get age;
  String get classname;
  String get number;
  Uint8List get image;
  int get id;
  @JsonKey(ignore: true)
  _$$UpdateStudentCopyWith<_$UpdateStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImageCopyWith<$Res> {
  factory _$$UpdateImageCopyWith(
          _$UpdateImage value, $Res Function(_$UpdateImage) then) =
      __$$UpdateImageCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List? image1});
}

/// @nodoc
class __$$UpdateImageCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$UpdateImage>
    implements _$$UpdateImageCopyWith<$Res> {
  __$$UpdateImageCopyWithImpl(
      _$UpdateImage _value, $Res Function(_$UpdateImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image1 = freezed,
  }) {
    return _then(_$UpdateImage(
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$UpdateImage with DiagnosticableTreeMixin implements UpdateImage {
  const _$UpdateImage({required this.image1});

  @override
  final Uint8List? image1;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddStudentEvent.updateImage(image1: $image1)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddStudentEvent.updateImage'))
      ..add(DiagnosticsProperty('image1', image1));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImage &&
            const DeepCollectionEquality().equals(other.image1, image1));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image1));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImageCopyWith<_$UpdateImage> get copyWith =>
      __$$UpdateImageCopyWithImpl<_$UpdateImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String age, String classname,
            String number, Uint8List image)
        addStudent,
    required TResult Function(String name, String age, String classname,
            String number, Uint8List image, int id)
        updateStudent,
    required TResult Function(Uint8List? image1) updateImage,
  }) {
    return updateImage(image1);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String age, String classname, String number,
            Uint8List image)?
        addStudent,
    TResult? Function(String name, String age, String classname, String number,
            Uint8List image, int id)?
        updateStudent,
    TResult? Function(Uint8List? image1)? updateImage,
  }) {
    return updateImage?.call(image1);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String age, String classname, String number,
            Uint8List image)?
        addStudent,
    TResult Function(String name, String age, String classname, String number,
            Uint8List image, int id)?
        updateStudent,
    TResult Function(Uint8List? image1)? updateImage,
    required TResult orElse(),
  }) {
    if (updateImage != null) {
      return updateImage(image1);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(UpdateStudent value) updateStudent,
    required TResult Function(UpdateImage value) updateImage,
  }) {
    return updateImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStudent value)? addStudent,
    TResult? Function(UpdateStudent value)? updateStudent,
    TResult? Function(UpdateImage value)? updateImage,
  }) {
    return updateImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(UpdateImage value)? updateImage,
    required TResult orElse(),
  }) {
    if (updateImage != null) {
      return updateImage(this);
    }
    return orElse();
  }
}

abstract class UpdateImage implements AddStudentEvent {
  const factory UpdateImage({required final Uint8List? image1}) = _$UpdateImage;

  Uint8List? get image1;
  @JsonKey(ignore: true)
  _$$UpdateImageCopyWith<_$UpdateImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddStudentState {
  Uint8List? get image =>
      throw _privateConstructorUsedError; // required String? name,
// required String? age,
// required String? classname,
// required String? number,
  dynamic get function => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStudentStateCopyWith<AddStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStudentStateCopyWith<$Res> {
  factory $AddStudentStateCopyWith(
          AddStudentState value, $Res Function(AddStudentState) then) =
      _$AddStudentStateCopyWithImpl<$Res, AddStudentState>;
  @useResult
  $Res call({Uint8List? image, dynamic function});
}

/// @nodoc
class _$AddStudentStateCopyWithImpl<$Res, $Val extends AddStudentState>
    implements $AddStudentStateCopyWith<$Res> {
  _$AddStudentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? function = null,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      function: null == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AddStudentStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uint8List? image, dynamic function});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AddStudentStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? function = null,
  }) {
    return _then(_$_Initial(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      function: null == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial({required this.image, required this.function});

  @override
  final Uint8List? image;
// required String? name,
// required String? age,
// required String? classname,
// required String? number,
  @override
  final dynamic function;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddStudentState(image: $image, function: $function)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddStudentState'))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('function', function));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.function, function));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(function));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements AddStudentState {
  const factory _Initial(
      {required final Uint8List? image,
      required final dynamic function}) = _$_Initial;

  @override
  Uint8List? get image;
  @override // required String? name,
// required String? age,
// required String? classname,
// required String? number,
  dynamic get function;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
