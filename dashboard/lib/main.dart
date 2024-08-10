import 'package:dashborad/api/config.dart';
import 'package:dashborad/blocs/base/base_bloc.dart';


import 'package:dashborad/road/config.dart';
import 'package:dashborad/service/auth_service.dart';
import 'package:dashborad/service/base_service.dart';
import 'package:dashborad/service/drivers_base_service.dart';
import 'package:dashborad/service/storage_service.dart';
import 'package:dashborad/utils/custom_scroll.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dashborad/layout/responsive_layout.dart';
import 'package:dashborad/screens/screens.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:url_strategy/url_strategy.dart';
import 'blocs/blocs.dart';
import 'package:path_provider/path_provider.dart';



void main() async {
   
   setPathUrlStrategy();
   WidgetsFlutterBinding.ensureInitialized();
   GoRouter.optionURLReflectsImperativeAPIs = true;
   await StorageService.configurePrefs();
   ApiConfig.configureDio();    
   


   HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );

   
   runApp(
    MultiBlocProvider(
    providers: [

      BlocProvider(create: (context) => AuthBloc(authService: AuthService())),
      BlocProvider(create: (context) => BaseBloc(baseService: BaseService())),
      BlocProvider(create: (context) => DriversBloc(driverBaseService: DriversAndBaseService(),
      authBloc: BlocProvider.of<AuthBloc>(context)),),
      BlocProvider(create: (context) => MenuBloc()) 
    ],
    child: const MyApp())
   );
    
   }

   

class MyApp extends StatelessWidget {

  const MyApp({ Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {   
    
    return MultiBlocProvider(
     
      providers: [
       BlocProvider(create: (context) => AuthBloc(authService: AuthService())),
       BlocProvider(create: (context) => BaseBloc(baseService: BaseService())),
       BlocProvider(create: (context) => DriversBloc(driverBaseService: DriversAndBaseService(),
       authBloc: BlocProvider.of<AuthBloc>(context))),
       BlocProvider(create: (context) => MenuBloc())
      ],
      child: Builder(
        builder: (context) {
          return BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {

              if(state is OnAddUserSessionEvent ) {
                context.go('/dashboard');
              } else if (state is OnClearUserSessionEvent){
                context.go('/login');

              }
             
            },
            child: MaterialApp.router( 
              scrollBehavior: MyCustomScrollBehavior(),          
              debugShowCheckedModeBanner: false,                  
              routerConfig: ConfigRoad(context.read<AuthBloc>(), context.read<BaseBloc>(),).router,              
              title: 'INRI REMISES',          
              builder:( context , child) => ResponsiveLayout(
            
                mobileScaffold:  MobileScaffold(child: child!,),
                tabletScaffold:  TabletScaffold(child: child,),
                desktopScaffold: DesktopScaffold(child: child,),
                child: child, 
                
            
                 ),
            ),
          );
        }
      ),
    );
  }
}