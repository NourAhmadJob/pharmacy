import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/company/cubit.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/company/states.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/widget/all_app/icon_button.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';
import 'package:pharmacy_system/utils/widget/company/itemOneCompany.dart';

class AllCompany extends StatelessWidget {
  const AllCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appColor,
        elevation: 0.0,
        title: NormalText(
          text: "All Company",
          colorText: Colors.white,
          sizeText: 20.0,
        ),
        leading: DefaultIconButton(
          iconData: Icons.notifications,
          onPressed: () {
            CompanyCubit.get(context).getAllCompany();
          },
        ),
      ),
      body: BlocBuilder<CompanyCubit, CompanyStates>(
        builder: (context, state) => CompanyCubit.get(context)
                .allCompany
                .isNotEmpty
            ? ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => Item(
                  allCompanyModel: CompanyCubit.get(context).allCompany[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20.0,
                ),
                itemCount: CompanyCubit.get(context).allCompany.length,
              )
            : const Center(
                child: CircularProgressIndicator(color: AllColors.appColor,),
              ),
      ),
    );
  }
}
