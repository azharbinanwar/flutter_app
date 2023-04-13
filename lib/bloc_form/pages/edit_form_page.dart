import 'package:flutter/material.dart';
import 'package:flutter_app/bloc_form/bloc/form_validator/form_validator_cubit.dart';
import 'package:flutter_app/bloc_form/domain/validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditFormPage extends StatelessWidget with Validator {
  EditFormPage({Key? key}) : super(key: key);

  final FormValidatorCubit _formValidatorCubit = FormValidatorCubit()..initForm(
    name: 'Joseph Kamal',
    email: 'josephkamal@gmail.com',
    address: '1234 Main Street',
    city: 'New York',
  );

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Form'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            BlocSelector<FormValidatorCubit, FormValidatorState, AutovalidateMode>(
              bloc: _formValidatorCubit,
              selector: (state) => state.autovalidateMode,
              builder: (context, AutovalidateMode autovalidateMode) {
                return Form(
                  key: _formKey,
                  autovalidateMode: autovalidateMode,
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: _formValidatorCubit.state.name,
                        validator: validateName,
                        onChanged: _formValidatorCubit.updateName,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          hintText: 'Enter your name',
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        initialValue: _formValidatorCubit.state.email,
                        validator: validateEmail,
                        onChanged: _formValidatorCubit.updateEmail,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        initialValue: _formValidatorCubit.state.address,
                        validator: validateAddress,
                        onChanged: _formValidatorCubit.updateAddress,
                        decoration: const InputDecoration(
                          labelText: 'Address',
                          hintText: 'Enter your address',
                          prefixIcon: Icon(Icons.home),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        initialValue: _formValidatorCubit.state.city,
                        validator: validateCity,
                        onChanged: _formValidatorCubit.updateAddress,
                        decoration: const InputDecoration(
                          labelText: 'City',
                          hintText: 'Enter your city',
                          prefixIcon: Icon(Icons.home),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 8.0),
            SizedBox(
              width: double.infinity,
              height: 48.0,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Do your job here
                  } else {
                    //
                    _formValidatorCubit.updateAutovalidateMode(AutovalidateMode.always);
                  }
                },
                child: const Text('Update'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
