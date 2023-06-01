import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes/notes_cubit.dart';
import 'package:note_app/widgets/colors_list_view.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../models/note_model.dart';
import 'constants.dart';
import 'custom_text_field.dart';
import 'edit_note_colore_list_view.dart';

class EditNotsViewBody extends StatefulWidget {
  const EditNotsViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotsViewBody> createState() => _EditNotsViewBodyState();
}

class _EditNotsViewBodyState extends State<EditNotsViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note ',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subTitle,
            maxLine: 5,
          ),
          const SizedBox(
            height: 15,
          ),
          EditNoteColorsList(note: widget.note),
        ],
      ),
    );
  }
}
