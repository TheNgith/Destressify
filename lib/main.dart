
import 'package:flutter/material.dart';
import 'package:health/health.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum MyState {
  DATA_NOT_FETCHED,
  FETCHING_DATA,
  DATA_READY,
  NO_DATA,
  AUTH_NOT_GRANTED,
}

class _MyHomePageState extends State<MyHomePage> {
  MyState _state = MyState.DATA_NOT_FETCHED;

  List<HealthDataPoint> _healthDataList = [];

  @override
  void initState() {
    super.initState();
  }

  Future fetchData() async {
    DateTime startDate = DateTime(2021, 07, 10, 12, 0, 0);
    DateTime endDate = DateTime.now();
    HealthFactory health = HealthFactory();
    List<HealthDataType> types = [
      HealthDataType.STEPS,
      HealthDataType.HEART_RATE,
    ];
    setState(() => _state = MyState.FETCHING_DATA);

    // if (Platform.isAndroid) {
    //   final permissionStatus = Permission.activityRecognition.request();
    //   if (await permissionStatus.isDenied ||
    //       await permissionStatus.isPermanentlyDenied) {
    //         showToast(
    //                 'activityRecognition permission required to fetch your steps count');
    //             return;
    //           }
    // }
        
    bool accessWasGranted = await health.requestAuthorization(types);
    int steps = 0;
    if (accessWasGranted) {
      try {
        /// Fetch new data
        List<HealthDataPoint> healthData =
            await health.getHealthDataFromTypes(startDate, endDate, types);

        /// Save all the new data points
        _healthDataList.addAll(healthData);
      } catch (e) {
        print("Caught exception in getHealthDataFromTypes: $e");
      }

      /// Filter out duplicates
      _healthDataList = HealthFactory.removeDuplicates(_healthDataList);

      /// Print the results
      _healthDataList.forEach((x) {
        print("Data point: $x");
        steps += x.value.round();
      });

      print("Steps: $steps");

      /// Update the UI to display the results
      setState(() {
        _state = _healthDataList.isEmpty ? MyState.NO_DATA : MyState.DATA_READY;
      });
    } else {
      print("Authorization not granted");
      setState(() => _state = MyState.DATA_NOT_FETCHED);
    }
  }
        
  Widget _contentFetchingData() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(20),
            child: CircularProgressIndicator(
              strokeWidth: 10,
            )),
        Text('Fetching data...')
      ],
    );
  }

  Widget _contentDataReady() {
    return ListView.builder(
        itemCount: _healthDataList.length,
        itemBuilder: (_, index) {
          HealthDataPoint p = _healthDataList[index];
          return ListTile(
            title: Text("${p.typeString}: ${p.value}"),
            trailing: Text('${p.unitString}'),
            subtitle: Text('${p.dateFrom} - ${p.dateTo}'),
          );
        });
  }

  Widget _contentNoData() {
    return Text('No Data to show');
  }

  Widget _contentNotFetched() {
    return Text('Press the download button to fetch data');
  }

  Widget _authorizationNotGranted() {
    return Text('''Authorization not given.
        For Android please check your OAUTH2 client ID is correct in Google Developer Console.
          For iOS check your permissions in Apple Health.''');
  }

  Widget _content() {
    if (_state == MyState.DATA_READY)
      return _contentDataReady();
    else if (_state == MyState.NO_DATA)
      return _contentNoData();
    else if (_state == MyState.FETCHING_DATA)
      return _contentFetchingData();
    else if (_state == MyState.AUTH_NOT_GRANTED)
      return _authorizationNotGranted();

    return _contentNotFetched();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Fetching'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.file_download),
            onPressed: () {
              fetchData();
            },
          )
        ],
      ),
      body: Center(child: _content()),
    );
  }

  void showToast(String s) {
      final scaffold = ScaffoldMessenger.of(context);
      scaffold.showSnackBar(
        SnackBar(
          content: Text('$s'),
          action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
        ),
      );
  }
}
