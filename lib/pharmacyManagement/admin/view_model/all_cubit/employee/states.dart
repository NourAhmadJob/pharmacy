abstract class EmployeeStates{}

class EmployeeInitialState extends EmployeeStates{}
// _______________________________________ get All Employee
class EmployeeLoadingState extends EmployeeStates {}

class EmployeeSuccessState extends EmployeeStates{}

class EmployeeErrorState extends EmployeeStates{
  final String error ;

  EmployeeErrorState({required this.error});
}
//______________________________________ deleteEmployee

class EmployeeDeleteLoadingState extends EmployeeStates {}

class EmployeeDeleteSuccessState extends EmployeeStates{}

class EmployeeDeleteErrorState extends EmployeeStates{
  final String error ;

  EmployeeDeleteErrorState({required this.error});
}

// ______________________________________updateEmployee

class EmployeeUpdateLoadingState extends EmployeeStates {}

class EmployeeUpdateSuccessState extends EmployeeStates{}

class EmployeeUpdateErrorState extends EmployeeStates{
  final String error ;

  EmployeeUpdateErrorState({required this.error});
}
