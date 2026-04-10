import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taske_app/core/utls/functions.dart';
import 'package:taske_app/features/post/data/models/post_model.dart';
import 'package:taske_app/features/post/presentation/manager/post_provider.dart';
import 'package:taske_app/features/post/presentation/views/widgets/custom_button.dart';
import 'package:taske_app/features/post/presentation/views/widgets/custom_text_field.dart';

class EditePostBody extends StatefulWidget {
  const EditePostBody({super.key, required this.post});
  final PostModel post;
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
          const SizedBox(height: 18),
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
          const SizedBox(height: 30),
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
              const SizedBox(width: 16),
              Expanded(
                child: CustomButton(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      final success = await context
                          .read<PostProvider>()
                          .updatePost(widget.post.id, {
                            "title": titleEditingController.text,
                            "body": contentEditingController.text,
                          });
                      if (success) {
                        Navigator.pop(context);
                        showSuccessSnackBar(
                          context,
                          "Post updated successfully ",
                        );
                      }
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
