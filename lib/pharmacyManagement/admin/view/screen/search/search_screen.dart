import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/employee/cubit.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/employee/states.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/widget/all_app/icon_button.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_field.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';
import 'package:pharmacy_system/utils/widget/employee/result_search.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  List filter = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmployeeCubit, EmployeeStates>(
      listener: (context, state) {},
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          backgroundColor: AllColors.appColor,
          elevation: 0.0,
          actions: [
            searchController.text != null
                ? DefaultIconButton(
                    iconData: Icons.close,
                    onPressed: () {
                      searchController.clear();
                    },
                  )
                : Container(),
          ],
          title: DefaultTextField(
            onChange: (String? value) {
              setState(() {
                filter = EmployeeCubit.get(context)
                    .allEmployeeList
                    .where((element) =>
                        element.name.toLowerCase().contains(value!) || element.email.toLowerCase().contains(value!))
                    .toList();
              });
            },
            controller: searchController,
            type: TextInputType.text,
            hint: "Search about Employee",
          ),
        ),
        body:  filter.isEmpty
            ? Center(
                child: NormalText(text: "Not Result found"),
              )
            : ListView.separated(
                itemBuilder: (context, index) => ResultSearch(allEmployeeModel: filter[index]),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20.0,
                ),
                itemCount: filter.length,
              ),
      ),
    );
  }
}
