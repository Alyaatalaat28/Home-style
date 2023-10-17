
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';



class HomeCubit extends Cubit<HomeCubtState> {
  HomeCubit() : super(HomeCubtInitial());

   static HomeCubit get(context)=>BlocProvider.of(context);
  
// List<Widget>screens=const[
//   HomeView(),
//   SearchView(),
//   CartView(),
//   UserView()
// ];

//int selectedIndex=0;
}
