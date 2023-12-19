import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/api/generated/api.enums.swagger.dart';
import 'package:frontend/api/generated/api.models.swagger.dart';
import 'package:frontend/app/user/logic/providers/notifiers/create_user_notifier.dart';
import 'package:frontend/app/user/logic/providers/notifiers/user_provider.dart';
import 'package:frontend/common/log/logger.dart';

class SignUpPage extends ConsumerStatefulWidget {
  final User user;
  const SignUpPage(this.user, {super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();

  late CreateUserDto _user = CreateUserDto(
    name: '',
    email: widget.user.email!,
    dateOfBirth: DateTime.now(),
    gender: CreateUserDtoGender.none,
    address: [
      const CreateAddressDTO(street: '', city: '', province: '', country: ''),
    ],
    firebaseUID: widget.user.uid,
  );
  @override
  void initState() {
    super.initState();
    _emailController.text = _user.email;
  }

  TextFormField _nameField() {
    return TextFormField(
      controller: _nameController,
      decoration: const InputDecoration(labelText: 'Name'),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your name';
        }
        return null;
      },
      onSaved: (value) => _user = _user.copyWith(name: value),
    );
  }

  TextFormField _emailField() {
    return TextFormField(
      controller: _emailController,
      decoration: const InputDecoration(labelText: 'Email'),
      readOnly: true,
    );
  }

  DropdownButtonFormField<CreateUserDtoGender> _genderField() {
    return DropdownButtonFormField<CreateUserDtoGender>(
      value: _user.gender,
      items: CreateUserDtoGender.values.map((gender) {
        return DropdownMenuItem<CreateUserDtoGender>(
          value: gender,
          child: Text(gender.toString().split('.').last),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _user = _user.copyWith(gender: value);
        });
      },
      decoration: const InputDecoration(labelText: 'Gender'),
      validator: (value) {
        if (value == null) {
          return 'Please select your gender';
        }
        return null;
      },
    );
  }

  TextFormField _dateOfBirthField() {
    return TextFormField(
      controller: _dateOfBirthController,
      decoration: const InputDecoration(labelText: 'Date of Birth'),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your date of birth';
        }
        return null;
      },
      onTap: () async {
        final pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );

        if (pickedDate != null && pickedDate != _user.dateOfBirth) {
          setState(() {
            _user = _user.copyWith(dateOfBirth: pickedDate);
            _dateOfBirthController.text =
                pickedDate.toLocal().toString().split(' ')[0];
          });
        }
      },
    );
  }

  ElevatedButton _submitButton() {
    return ElevatedButton(
      onPressed: _submitForm,
      child: const Text('Sign Up'),
    );
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Log.instance.w(_user);
      await ref.read(createUserProvider.notifier).run(_user);
      ref.watch(createUserProvider).when(
            data: (_) => ref.read(userProvider.notifier).fetch(),
            error: Log.instance.e,
            loading: Log.instance.d,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _nameField(),
              _emailField(),
              _dateOfBirthField(),
              _genderField(),
              _submitButton(),
            ],
          ),
        ),
      ),
    );
  }
}
