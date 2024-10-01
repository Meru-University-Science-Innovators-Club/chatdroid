import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField(
      {super.key,
      required this.apiController,
      required this.label,
      required this.textInputAction,
      required this.textInputType,
      this.autofillHints,
      this.validator,
      this.onFieldSubmitted});


  const InputField.api({
    required TextEditingController apiController,
    String label = "Gemini API Key",
    TextInputAction textInputAction = TextInputAction.done,
    Key? key,
  }) : this(
      key: key,
      apiController: apiController,
      label: label,
      textInputAction: textInputAction,
      textInputType: TextInputType.url,
      autofillHints: const [AutofillHints.url],
      );


  final TextEditingController apiController;
  final String label;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final List<String>? autofillHints;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.apiController,
      keyboardType: widget.textInputType,
      obscureText: false,
      autofillHints: widget.autofillHints,
      decoration: InputDecoration(
        labelText: widget.label,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white)
        )
      ),


    );
  }
}
