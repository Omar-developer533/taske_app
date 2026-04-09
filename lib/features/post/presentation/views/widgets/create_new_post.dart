import 'package:flutter/material.dart';
import 'package:taske_app/features/post/presentation/views/widgets/creat_new_post_header.dart';
import 'package:taske_app/features/post/presentation/views/widgets/custom_button.dart';
import 'package:taske_app/features/post/presentation/views/widgets/custom_text_field.dart';

class CreateNewPost extends StatefulWidget {
  const CreateNewPost({super.key});

  @override
  State<CreateNewPost> createState() => _CreateNewPostState();
}

GlobalKey<FormState> formKey = GlobalKey();
TextEditingController nameEditingController = TextEditingController();
TextEditingController titleEditingController = TextEditingController();
TextEditingController contentEditingController = TextEditingController();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

class _CreateNewPostState extends State<CreateNewPost> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Form(
        autovalidateMode: autovalidateMode,
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CreatNewPostHeader(),
              SizedBox(height: 30),
              CustomTextField(
                controller: nameEditingController,
                fieldName: 'Your Name',
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return "this field is required";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 18),
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
                          nameEditingController.clear();
                          contentEditingController.clear();
                          titleEditingController.clear();
                          FocusScope.of(context).unfocus();
                          autovalidateMode = AutovalidateMode.disabled;
                        } else {
                          autovalidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                      buttonName: 'Create',
                      nameColor: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * .1),
            ],
          ),
        ),
      ),
    );
  }
}
