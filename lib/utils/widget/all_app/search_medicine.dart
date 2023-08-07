import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/model/grud/all_grud.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/home/cubit.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/home/states.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';

import 'text_normal.dart';

class SearchMedicine extends StatelessWidget {
  final AllGrud allGrud;

  const SearchMedicine({
    super.key,
    required this.allGrud,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160.0,
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Image(
            alignment: Alignment.center,
            width: 100.0,
            height: 100.0,
            image: AssetImage(
              "assets/images/open.png",
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                NormalText(
                  text: allGrud.name,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                NormalText(
                  text: 'Amount of Medicine 20 20 20 ',
                  colorText: Colors.grey,
                  sizeText: 16.0,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: NormalText(
                    text: allGrud.email,
                    sizeText: 16.0,
                    fontWeight: FontWeight.w400,
                    maxLine: 1,
                    textOverflow: TextOverflow.ellipsis,
                    colorText: Colors.black87,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(
                      right: 10.0,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          color: AllColors.appColor,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        NormalText(
                          text: "Add to Cart",
                          colorText: AllColors.appColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
