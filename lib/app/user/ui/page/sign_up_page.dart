import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/api/generated/api.swagger.dart';
import 'package:frontend/app/notification/logic/services/fcm_token_service.dart';
import 'package:frontend/app/user/logic/providers/notifiers/create_user_provider.dart';
import 'package:frontend/common/ui/widgets/buttons/big_button.dart';
import 'package:frontend/common/utils/language.dart';
import 'package:frontend/main/enums/os.dart';
import 'package:frontend/main/environment.dart';

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
    notificationTokens: [
      CreateUserDeviceDto(
        os: EnvConfig.os.toCreateUserDeviceDto,
        model: EnvConfig.model,
        deviceId: EnvConfig.deviceId,
        fcmToken: FCMTokenService.token,
      ),
    ],
  );
  @override
  void initState() {
    super.initState();
    _emailController.text = _user.email;
  }

  TextFormField _nameField() {
    return TextFormField(
      controller: _nameController,
      decoration: InputDecoration(labelText: Language.text.fullName),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return Language.text.nameCantBeEmpty;
        }
        return null;
      },
      onSaved: (value) => _user = _user.copyWith(name: value),
    );
  }

  TextFormField _emailField() {
    return TextFormField(
      controller: _emailController,
      decoration: InputDecoration(labelText: Language.text.email),
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
      decoration: InputDecoration(labelText: Language.text.gender),
      validator: (value) {
        if (value == null) {
          return Language.text.selectGender;
        }
        return null;
      },
    );
  }

  TextFormField _dateOfBirthField() {
    return TextFormField(
      controller: _dateOfBirthController,
      decoration: InputDecoration(labelText: Language.text.dateOfBirth),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return Language.text.dateOfBirthCantBeEmpty;
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

  BigButton _submitButton() {
    return ref.watch(createUserNotifierProvider).maybeWhen(
          loading: (_) => const BigButton.child(
            onPressed: null,
            child: CircularProgressIndicator(),
          ),
          orElse: () => BigButton(
            onPressed: _submitForm,
            text: Language.text.signUp,
          ),
        );
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await ref.read(createUserNotifierProvider.notifier).create(_user);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Language.text.signUp),
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
