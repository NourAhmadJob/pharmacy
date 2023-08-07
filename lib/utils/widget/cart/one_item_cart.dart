import 'package:flutter/material.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';

class OneItemCart extends StatelessWidget {
  const OneItemCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      height: 130,
      color: Colors.white,
      child: Row(
        children: [
          const Image(
            image: AssetImage('assets/images/open.png'),
            height: 80,
          ),
          const SizedBox(
            width: 5.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 6.0,
                ),
                NormalText(
                  text: "Vitamin Vitamin Vitamin Vitamin Vitamin",
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                NormalText(
                  text: "Name Company Name Company ",
                  fontWeight: FontWeight.w600,
                  colorText: Colors.grey,
                ),
                const Spacer(),
                Row(
                  children: [
                    NormalText(
                      text: "94525LBLWC Id Product",
                      sizeText: 12,
                    ),
                    const SizedBox(
                      width: 12.1,
                    ),
                    Expanded(
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            padding: const EdgeInsets.only(bottom: 8.0 , right: 3.0),
                            decoration: const BoxDecoration(
                              color: AllColors.appColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.minimize,
                                size: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: NormalText(
                              text: "110",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              color: AllColors.appColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.add, color: Colors.white,),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
