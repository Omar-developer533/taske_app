import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taske_app/features/post/presentation/views/widgets/add_new_comment_header.dart';
import 'package:taske_app/features/post/presentation/views/widgets/custom_button.dart';
import 'package:taske_app/features/post/presentation/views/widgets/custom_text_field.dart';

class AddNewComment extends StatefulWidget {
  const AddNewComment({super.key});

  @override
  State<AddNewComment> createState() => _AddNewCommentState();
}

GlobalKey<FormState> formKey = GlobalKey();
TextEditingController nameEditingController = TextEditingController();
TextEditingController titleEditingController = TextEditingController();
TextEditingController contentEditingController = TextEditingController();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

class _AddNewCommentState extends State<AddNewComment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
      ),
      child: Form(
        autovalidateMode: autovalidateMode,
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AddNewCommentHeader(),
              SizedBox(height: 30.h),
              CustomTextField(
                controller: nameEditingController,
                fieldName: 'Name',
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return "this field is required";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 18.h),
              CustomTextField(
                fieldName: 'Email',
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return "this field is required";
                  } else {
                    return null;
                  }
                },
                controller: titleEditingController,
              ),
              SizedBox(height: 18.h),
              CustomTextField(
                fieldName: 'Comment',
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return "this field is required";
                  } else {
                    return null;
                  }
                },
                controller: contentEditingController,
              ),
              SizedBox(height: 30.h),
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
                  SizedBox(width: 16.w),
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
