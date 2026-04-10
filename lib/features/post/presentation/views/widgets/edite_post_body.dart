import 'package:flutter/material.dart';
import 'package:taske_app/features/post/presentation/views/widgets/custom_button.dart';
import 'package:taske_app/features/post/presentation/views/widgets/custom_text_field.dart';

class EditePostBody extends StatefulWidget {
  const EditePostBody({super.key});

  @override
  State<EditePostBody> createState() => _EditePostBodyState();
}

GlobalKey<FormState> formKey = GlobalKey();

TextEditingController titleEditingController = TextEditingController();
TextEditingController contentEditingController = TextEditingController();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

class _EditePostBodyState extends State<EditePostBody> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            fieldName: 'Title',
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "this field is required";
              } else {
                return null;
              }
            },
            controller: titleEditingController,
          ),
          SizedBox(height: 18),
          CustomTextField(
            fieldName: 'Content',
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "this field is required";
              } else {
                return null;
              }
            },
            controller: contentEditingController,
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  buttonColor: Colors.transparent,
                  buttonName: 'Cancel',
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: CustomButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      contentEditingController.clear();
                      titleEditingController.clear();
                      FocusScope.of(context).unfocus();
                      autovalidateMode = AutovalidateMode.disabled;
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  buttonName: 'Update',
                  nameColor: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
