import 'package:flutter/material.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/model/company/all_company.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/company/details_company.dart';
import 'package:pharmacy_system/utils/fucntion/navigate.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';
class Item extends StatelessWidget {

  final  AllCompanyModel allCompanyModel ;

  const Item({super.key, required this.allCompanyModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigateTo(context: context, screen: const DetailsCompany());
      },
      child: Card(
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/open.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: SizedBox(
                  height: 120.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: NormalText(
                            text: "Name Name Name Name Name Name Name Name Name Name Name Name Name Name  ",
                            heightText: 1.5,
                            colorText: Colors.black,
                            textOverflow: TextOverflow.ellipsis,
                            maxLine: 3,
                          )),
                      NormalText(text: allCompanyModel.name , colorText: Colors.black,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}