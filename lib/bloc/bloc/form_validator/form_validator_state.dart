part of 'form_validator_cubit.dart';

@immutable
abstract class FormValidatorState {
  final AutovalidateMode autovalidateMode;
  final String email;
  final String password;
  final String confirmPassword;
  final String name;
  final String address;
  final String city;
  final bool obscureText;

  const FormValidatorState({
    this.autovalidateMode = AutovalidateMode.disabled,
    this.email = '',
    this.password = '',
    this.confirmPassword = '',
    this.name = '',
    this.address = '',
    this.city = '',
    this.obscureText = true,
  });

  FormValidatorState copyWith({
    AutovalidateMode? autovalidateMode,
    String? email,
    String? password,
    String? confirmPassword,
    String? name,
    String? address,
    String? city,
    bool? obscureText,
  });
}

class FormValidatorUpdate extends FormValidatorState {

  const FormValidatorUpdate({
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
    String email = '',
    String password = '',
    String confirmPassword = '',
    String name = '',
    String address = '',
    String city = '',
    bool obscureText = true,
  }) : super(
    autovalidateMode: autovalidateMode,
    email: email,
    password: password,
    confirmPassword: confirmPassword,
    name: name,
    address: address,
    city: city,
    obscureText: obscureText,
  );

  @override
  FormValidatorUpdate copyWith({
    AutovalidateMode? autovalidateMode,
    String? email,
    String? password,
    String? confirmPassword,
    String? name,
    String? address,
    String? city,
    bool? obscureText,
  }) {
    return FormValidatorUpdate(
      autovalidateMode: autovalidateMode ?? this.autovalidateMode,
      email: email ?? this.email,
      password: password ?? this.password,
      name: name ?? this.name,
      address: address ?? this.address,
      city: city ?? this.city,
      obscureText: obscureText ?? this.obscureText,
    );
  }
}