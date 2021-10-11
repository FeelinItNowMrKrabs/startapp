import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_form.freezed.dart';
part 'user_form.g.dart';

@freezed
class UserForm with _$UserForm {
  const factory UserForm(
    String age,
    String name,
    String picture,
    List<String> tags,
    String uuid,
  ) = _UserForm;

  factory UserForm.fromJson(Map<String, dynamic> json) =>
      _$UserFormFromJson(json);
}
