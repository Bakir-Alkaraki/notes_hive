import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteshive/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:noteshive/view/widgets/add_note_form.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is AddNoteFailure) {
            print("Failed ${state.errMessage}");
          }

          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child:  SingleChildScrollView(child: AddNoteForm()));
        },
      ),
    );
  }
}
