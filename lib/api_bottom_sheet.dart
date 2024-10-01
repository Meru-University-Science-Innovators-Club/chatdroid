import 'package:chatdroid/input_field.dart';
import 'package:flutter/material.dart';

class ApiBottomSheet extends StatefulWidget {
  const ApiBottomSheet({super.key, required this.apiController});

  final TextEditingController apiController;

  @override
  State<ApiBottomSheet> createState() => _ApiBottomSheetState();
}

class _ApiBottomSheetState extends State<ApiBottomSheet> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 4,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2)),
                  margin: EdgeInsets.only(bottom: 8),
                ),
                SizedBox(
                  height: 16,
                ),
                InputField.api(apiController: widget.apiController),

                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50)
                    ),
                    child: Text("Submit",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16
                      ),
                    )
                ),

              ],
            ),
          ),
        ));
  }
}
