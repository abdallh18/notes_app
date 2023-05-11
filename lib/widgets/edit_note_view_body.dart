import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class EditNotsViewBody extends StatelessWidget {
  const EditNotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 25,
          ),
          CustomAppBar(
            title: 'Edit Note ',
            icon: Icons.check,
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: 'Content',
            maxLine: 6,
          ),
        ],
      ),
    );
  }
}
