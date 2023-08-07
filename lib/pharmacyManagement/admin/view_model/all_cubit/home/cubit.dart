import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/model/grud/all_grud.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/business/business.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/home/home_screen.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/order/all_order.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/profile/profile_bottom_bar.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/home/states.dart';

class HomeCubit extends Cubit<HomeStates> {

  HomeCubit() : super (HomeInitialState());

  List<String> title = [
    "Home",
    "Order Pharmacy",
    "Business Pharmacy",
    "Profile",
  ];

   List<Widget> screen = [
     const HomeScreen(),
     const AllOrder(),
     const BusinessScreen(),
     const ProfilBottomBar(),
   ];
  static HomeCubit get(context) => BlocProvider.of(context);
   int currentIndex = 0;
  void changeIndexBottom(int index) {
    currentIndex = index ;
    emit(BottomNavBarHomeState());
  }

  List <BottomNavigationBarItem> bottomItem = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
    const BottomNavigationBarItem(icon: Icon(Icons.list ), label: "Order",),
    const BottomNavigationBarItem(icon: Icon(Icons.business), label: "Business",),
    const BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
  ];


  List<AllGrud> allgrud = [
    AllGrud(name: "Setamol", email: "noorahmad@gmail.com", id: 10 , ),
    AllGrud(name: "Vitamin D", email: "noorahmad@gmail.com", id: 10 , ),
    AllGrud(name: "Aspirin", email: "noorahmad@gmail.com", id: 10 , ),
    AllGrud(name: "Milk", email: "noorahmad@gmail.com", id: 10 , ),
    AllGrud(name: "Corona", email: "noorahmad@gmail.com", id: 10 , ),
  ];


  void listSearch(filter , String?value , context ,List old )
  {
    filter = old.where((element) => element.name.toLowerCase().contains(value)).toList();
    emit(SearchHomeSuccess());
  }

}