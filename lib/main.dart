// import 'package:buttons_tabbar/buttons_tabbar.dart';
// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Example(),
//     );
//   }
// }
//
// class Example extends StatefulWidget {
//   Example({Key? key}) : super(key: key);
//
//   @override
//   _ExampleState createState() => _ExampleState();
// }
//
// class _ExampleState extends State<Example> {
//   int selected=0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: DefaultTabController(
//           length: 3,
//           child: Column(
//             children: <Widget>[
//               Row(
//                 children: [
//                   Expanded(
//                     child: ButtonsTabBar(
//                       backgroundColor: Colors.red,
//                       unselectedBackgroundColor: Colors.grey[300],
//                       unselectedLabelStyle: TextStyle(color: Colors.black),
//                       labelStyle:
//                       TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//                       tabs: [
//                         Tab(
//                           iconMargin: EdgeInsets.all(0),
//                           icon: Icon(Icons.directions_car),
//                           text: "car",
//                         ),
//                         Tab(
//                           icon: Icon(Icons.directions_transit),
//                           text: "transit",
//                         ),
//                         Tab(icon: Icon(Icons.directions_bike)),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: 8,
//                   ),
//                   Expanded(
//                     child: Container(
//                       padding: EdgeInsets.only(left: 8),
//                       height: 40,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.blue,
//                       ),
//                       child: GestureDetector(
//                         onTap: () {
//                           showModalBottomSheet<dynamic>(
//                               backgroundColor: Colors.grey[700],
//                               context: context,
//
//                               // isScrollControlled: true,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.vertical(
//                                   top: Radius.circular(20),
//                                 ),
//                               ),
//                               builder: (context) => GridView(
//                                 gridDelegate:
//                                 SliverGridDelegateWithFixedCrossAxisCount(
//                                   crossAxisCount: 2,
//                                   childAspectRatio: 3 / 0.8, // Two columns
//                                   mainAxisSpacing: 8.0,
//                                   crossAxisSpacing: 8.0,
//                                 ),
//                                 // primary: true,
//                                 padding: const EdgeInsets.all(30),
//                                 children: <Widget>[
//                                   // Your buttons or widgets go here
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       color: selected == 0
//                                           ? Colors.white
//                                           : Colors.black,
//                                     ),
//                                     // Customize the container color
//                                     child: TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           selected = 0;
//                                           Navigator.pop(context);
//                                         });
//                                       },
//                                       child: Text(
//                                         'All',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: selected == 0
//                                                 ? Colors.red
//                                                 : Colors.white,
//                                             fontSize: 20),
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       color: selected == 1
//                                           ? Colors.white
//                                           : Colors.black,
//                                     ),
//                                     // Customize the container color
//                                     child: TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           selected = 1;
//                                           Navigator.pop(context);
//                                         });
//                                       },
//                                       child: Text(
//                                         'Actions',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: selected == 1
//                                                 ? Colors.red
//                                                 : Colors.white,
//                                             fontSize: 20),
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       color: selected == 2
//                                           ? Colors.white
//                                           : Colors.black,
//                                     ),
//                                     // Customize the container color
//                                     child: TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           selected = 2;
//                                           Navigator.pop(context);
//                                         });
//                                       },
//                                       child: Text(
//                                         'Adventure',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: selected == 2
//                                                 ? Colors.red
//                                                 : Colors.white,
//                                             fontSize: 20),
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       color: selected == 3
//                                           ? Colors.white
//                                           : Colors.black,
//                                     ),
//                                     // Customize the container color
//                                     child: TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           selected = 3;
//                                           Navigator.pop(context);
//                                         });
//                                       },
//                                       child: Text(
//                                         'Animation',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: selected == 3
//                                                 ? Colors.red
//                                                 : Colors.white,
//                                             fontSize: 20),
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       color: selected == 4
//                                           ? Colors.white
//                                           : Colors.black,
//                                     ),
//                                     // Customize the container color
//                                     child: TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           selected = 4;
//                                           Navigator.pop(context);
//                                         });
//                                       },
//                                       child: Text(
//                                         'Biography',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: selected == 4
//                                                 ? Colors.red
//                                                 : Colors.white,
//                                             fontSize: 20),
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       color: selected == 5
//                                           ? Colors.white
//                                           : Colors.black,
//                                     ),
//                                     // Customize the container color
//                                     child: TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           selected = 5;
//                                           Navigator.pop(context);
//                                         });
//                                       },
//                                       child: Text(
//                                         'Comedy',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: selected == 5
//                                                 ? Colors.red
//                                                 : Colors.white,
//                                             fontSize: 20),
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       color: selected == 6
//                                           ? Colors.white
//                                           : Colors.black,
//                                     ),
//                                     // Customize the container color
//                                     child: TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           selected = 6;
//                                           Navigator.pop(context);
//                                         });
//                                       },
//                                       child: Text(
//                                         'Crime',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: selected == 6
//                                                 ? Colors.red
//                                                 : Colors.white,
//                                             fontSize: 20),
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       color: selected == 7
//                                           ? Colors.white
//                                           : Colors.black,
//                                     ),
//                                     // Customize the container color
//                                     child: TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           selected = 7;
//                                           Navigator.pop(context);
//                                         });
//                                       },
//                                       child: Text(
//                                         'Drama',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: selected == 7
//                                                 ? Colors.red
//                                                 : Colors.white,
//                                             fontSize: 20),
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       color: selected == 8
//                                           ? Colors.white
//                                           : Colors.black,
//                                     ),
//                                     // Customize the container color
//                                     child: TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           selected = 8;
//                                           Navigator.pop(context);
//                                         });
//                                       },
//                                       child: Text(
//                                         'Horror',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: selected == 8
//                                                 ? Colors.red
//                                                 : Colors.white,
//                                             fontSize: 20),
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       color: selected == 9
//                                           ? Colors.white
//                                           : Colors.black,
//                                     ),
//                                     // Customize the container color
//                                     child: TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           selected = 9;
//                                           Navigator.pop(context);
//                                         });
//                                       },
//                                       child: Text(
//                                         'Romance',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: selected == 9
//                                                 ? Colors.red
//                                                 : Colors.white,
//                                             fontSize: 20),
//                                       ),
//                                     ),
//                                   ),
//                                   // Add more buttons as needed
//                                 ],
//                               ));
//                         },
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: <Widget>[
//                             Icon(
//                               Icons.double_arrow,
//                               color: Colors.black,
//                               size: 20,
//                             ),
//                             SizedBox(width: 3),
//                             Text('Genre',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w500,
//                                 )),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 8,
//                   ),
//                   Container(
//                       height: 40,
//                       width: 40,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.blue,
//                       ),
//                       child: Icon(
//                         Icons.language,
//                         color: Colors.black,
//                       )),
//                 ],
//               ),
//               Expanded(
//                 child: TabBarView(
//                   children: <Widget>[
//                     IndexedStack1(
//                       selected: selected,
//                     ),
//                     IndexedStack1(
//                       selected: selected,
//                     ),
//                     IndexedStack1(
//                       selected: selected,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
// class SearchBar extends StatefulWidget {
//   const SearchBar({super.key});
//
//   @override
//   State<SearchBar> createState() => SearchBarState();
// }
//
// class SearchBarState extends State<SearchBar> {
//   final TextEditingController _searchController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(0.0),
//       child: Container(
//         height: 40,
//         // width: double.infinity,
//         padding: const EdgeInsets.only(left: 10.0, right: 10),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20), color: Colors.grey[600]),
//         child: TextField(
//           controller: _searchController,
//           decoration: InputDecoration(
//             hintText: 'Search here...',
//             hintStyle:
//             TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//             // Add a clear button to the search bar
//             // suffixIcon: IconButton(
//             //   icon: Icon(Icons.clear),
//             //   onPressed: () => _searchController.clear(),
//             // ),
//             // Add a search icon or button to the search bar
//             // prefixIcon: IconButton(
//             //   icon: Icon(Icons.search),
//             //   onPressed: () {
//             //     // Perform the search here
//             //   },
//             // ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class IndexedStack1 extends StatefulWidget {
//   const IndexedStack1({super.key, required this.selected});
//   final int selected;
//
//   @override
//   State<IndexedStack1> createState() => IndexedStack1State();
// }
//
// class IndexedStack1State extends State<IndexedStack1> {
//   List<String> names = [
//     'All',
//     'Actions',
//     'Adventure',
//     'Animation',
//     'Biography',
//     'Comedy',
//     'Crime',
//     'Drama',
//     'Horror',
//     'Romance'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return
//       SingleChildScrollView(
//         child: SafeArea(
//           child: Container(
//             height: 3000,
//             child: Column(children: [
//               SearchBar(),
//               Container(
//                 height: widget.selected > 0 ? 40 : 0,
//                 padding: widget.selected > 0
//                     ? EdgeInsetsDirectional.all(8)
//                     : EdgeInsetsDirectional.all(0),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10), color: Colors.grey),
//                 child: Text(
//                   names[widget.selected],
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Container(
//                     height: 8000,
//                     color: Colors.lightBlueAccent,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children:[ GridView.builder(
//                         // scrollDirection: Axis.vertical,
//                         physics: NeverScrollableScrollPhysics(),
//                         shrinkWrap: true,
//                         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2,
//                           // maxCrossAxisExtent: 200,
//                           childAspectRatio: 2 / 3,
//                           crossAxisSpacing: 10,
//                           mainAxisSpacing: 10,
//                         ),
//                         itemCount: 12,
//                         itemBuilder: (BuildContext context, int index) {
//                           return Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               height: 250,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: Colors.grey[900]),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Expanded(
//                                     child: Padding(
//                                       padding: const EdgeInsets.only(
//                                           left: 10.0, top: 10.0, right: 10.0),
//                                       child: SizedBox(
//                                         width: double.infinity,
//                                         height: double.infinity,
//                                         child: ClipRRect(
//                                             borderRadius: BorderRadius.circular(16),
//                                             child: Image.asset(
//                                               'images/moviepic4.jpg',
//                                               fit: BoxFit.fill,
//                                             )),
//                                       ),
//                                     ),
//                                   ),
//                                   const Padding(
//                                     padding:
//                                     EdgeInsets.only(left: 8.0, bottom: 2.0, right: 8.0),
//                                     child: Align(
//                                       alignment: Alignment.bottomLeft,
//                                       child: Text(
//                                         'KICK',
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.w900,
//                                           fontSize: 30,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 8.0, bottom: 4),
//                                     child: Align(
//                                       alignment: Alignment.bottomLeft,
//                                       child: Container(
//                                         // height: 30,
//                                         decoration: BoxDecoration(
//                                           borderRadius: BorderRadius.circular(10),
//                                           color: Colors.red,
//                                         ),
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(4.0),
//                                           child: Text(
//                                             'Series',
//                                             style: TextStyle(
//                                                 fontWeight: FontWeight.bold,
//                                                 color: Colors.white),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//
//                                   // const Padding(
//                                   //   padding: EdgeInsets.only(left: 8.0, bottom: 2.0, right: 8.0),
//                                   //   child: Align(
//                                   //     alignment: Alignment.bottomLeft,
//                                   //     child: Text(
//                                   //       'ACTIONS',
//                                   //       style: TextStyle(
//                                   //         fontSize: 10,
//                                   //         color: Colors.grey,
//                                   //       ),
//                                   //     ),
//                                   //   ),
//                                   // ),
//                                   // Row(children: [
//                                   //   Padding(
//                                   //     padding: const EdgeInsets.only(
//                                   //         left: 8.0, bottom: 8.0, right: 8.0),
//                                   //     child: ElevatedButton.icon(
//                                   //       style: ElevatedButton.styleFrom(
//                                   //         fixedSize: const Size(100, 30),
//                                   //         backgroundColor: Colors.deepOrange,
//                                   //       ),
//                                   //       onPressed: () {
//                                   //         // Your action here
//                                   //       },
//                                   //       icon: const Icon(
//                                   //         Icons.star_rate_rounded,
//                                   //         color: Colors.white,
//                                   //         size: 15,
//                                   //       ),
//                                   //       label: const Text(
//                                   //         '10.0',
//                                   //         style: TextStyle(
//                                   //             color: Colors.white,
//                                   //             fontSize: 15,
//                                   //             fontWeight: FontWeight.bold),
//                                   //       ),
//                                   //     ),
//                                   //   ),
//                                   //   const Padding(
//                                   //     padding:
//                                   //         EdgeInsets.only(left: 2.0, bottom: 8.0, right: 8.0),
//                                   //     child: Align(
//                                   //       alignment: Alignment.bottomLeft,
//                                   //       child: Text(
//                                   //         '2021',
//                                   //         style: TextStyle(
//                                   //           fontSize: 15,
//                                   //           color: Colors.white,
//                                   //         ),
//                                   //       ),
//                                   //     ),
//                                   //   ),
//                                   // ])
//                                 ],
//                               ),
//                             ),
//                           );
//                         },
//                       ),],
//                     ),
//                   ),
//                 ),
//               ),
//             ]),
//           ),
//         ),
//       );
//   }
// }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// /// Flutter code sample for [showDialog].
//
// void main() => runApp(const ShowDialogExampleApp());
//
// class ShowDialogExampleApp extends StatelessWidget {
//   const ShowDialogExampleApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: DialogExample(),
//     );
//   }
// }
//
// class DialogExample extends StatelessWidget {
//   const DialogExample({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('showDialog Sample')),
//       body: Center(
//         child: OutlinedButton(
//           onPressed: () => _dialogBuilder(context),
//           child: const Text('Open Dialog'),
//         ),
//       ),
//     );
//   }
//
//   Future<void> _dialogBuilder(BuildContext context) {
//     return showDialog<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Basic dialog title'),
//           content: const Text(
//             'A dialog is a type of modal window that\n'
//                 'appears in front of app content to\n'
//                 'provide critical information, or prompt\n'
//                 'for a decision to be made.',
//           ),
//           actions: <Widget>[
//             TextButton(
//               style: TextButton.styleFrom(
//                 textStyle: Theme.of(context).textTheme.labelLarge,
//               ),
//               child: const Text('Disable'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               style: TextButton.styleFrom(
//                 textStyle: Theme.of(context).textTheme.labelLarge,
//               ),
//               child: const Text('Enable'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }


// import 'package:audioplayers/audioplayers.dart' ;
// import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';
// import 'package:just_audio/just_audio.dart' as just_audio;
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Music Player',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MusicPlayerScreen(),
//     );
//   }
// }
//
// class MusicPlayerScreen extends StatefulWidget {
//   @override
//   _MusicPlayerScreenState createState() => _MusicPlayerScreenState();
// }
//
// class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
//   final  just_audio.AudioPlayer _player =  just_audio.AudioPlayer();
//   bool _isPlaying = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _initAudioPlayer();
//   }
//
//   void _initAudioPlayer() async {
//     try {
//       await _player.play(AssetSource('assets/music.mp3'));
//       // Add listener to update UI when song position changes
//       _player.positionStream.listen((position) {
//         setState(() {});
//       });
//     } catch (e) {
//       print("Error loading audio source: $e");
//     }
//   }
//
//   @override
//   void dispose() {
//     _player.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Music Player'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           StreamBuilder<Duration>(
//             stream: _player.durationStream,
//             builder: (context, snapshot) {
//               final duration = snapshot.data ?? Duration.zero;
//               return StreamBuilder<Duration>(
//                 stream: _player.positionStream,
//                 builder: (context, snapshot) {
//                   var position = snapshot.data ?? Duration.zero;
//                   if (position > duration) {
//                     position = duration;
//                   }
//                   return Column(
//                     children: [
//                       Text('${position.inMinutes}:${(position.inSeconds % 60).toString().padLeft(2, '0')} / ${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}'),
//                       Slider(
//                         value: position.inSeconds.toDouble(),
//                         min: 0.0,
//                         max: duration.inSeconds.toDouble(),
//                         onChanged: (value) {
//                           _player.seek(Duration(seconds: value.toInt()));
//                         },
//                       ),
//                     ],
//                   );
//                 },
//               );
//             },
//           ),
//           IconButton(
//             icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
//             onPressed: () {
//               setState(() {
//                 _isPlaying = !_isPlaying;
//                 if (_isPlaying) {
//                   _player.play();
//                 } else {
//                   _player.pause();
//                 }
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
//
// void main() {  WidgetsFlutterBinding.ensureInitialized();
//   runApp(const MyApp());}
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Music Player',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MusicPlayerScreen(),
//     );
//   }
// }
//
// class MusicPlayerScreen extends StatefulWidget {
//   const MusicPlayerScreen({super.key});
//
//   @override
//   MusicPlayerScreenState createState() => MusicPlayerScreenState();
// }
//
// class MusicPlayerScreenState extends State<MusicPlayerScreen> {
//   final audioPlayer = AudioPlayer();
//   Duration duration = Duration.zero;
//   Duration position = Duration.zero;
//   bool isPlaying = false;
//
//   @override
//   void initState() {
//     super.initState();
//     audioPlayer.onPlayerStateChanged.listen((State) {
//       setState(() {
//         isPlaying=State==PlayerState.playing;
//       });
//     });
//     audioPlayer.onDurationChanged.listen((newDuration){
//       setState(() {
//         duration=newDuration;
//       });
//     });
//     audioPlayer.onPositionChanged.listen((newPosition){
//       setState(() {
//         duration=newPosition;
//       });
//     });
//   }
//    @override
//    void dispose(){
//     audioPlayer.dispose();
//     super.dispose();
//    }
//  String formatTime(Duration duration){
//      String twoDigits(int n) => n.toString().padLeft(2,'0');
//      final hours=twoDigits(duration.inHours);
//      final minutes=twoDigits(duration.inMinutes.remainder(60));
//      final seconds=twoDigits(duration.inSeconds.remainder(60));
//      return [
//        if(duration.inHours>0)hours,minutes,seconds,
//      ].join(':');
//  }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Music Player'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Slider(
//             min: 0.0,
//             max: duration.inSeconds.toDouble(),
//             value: position.inSeconds.toDouble(),
//             onChanged: (value)async {
//               final position=Duration(seconds: value.toInt());
//               // setState(() {
//                 await audioPlayer.seek(position);
//                 await audioPlayer.resume();
//               // });
//             },
//           ),
//        CircleAvatar   (
//          radius: 30,
//             child: IconButton(
//               icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow,size: 50,),
//               onPressed: () async {
//                 if(isPlaying){await audioPlayer.pause();}
//                 else{
//                   // final player=AudioCache(prefix: 'sounds/');
//                   final url= "assets/music/song.mp3";
//                   try {
//                     await audioPlayer.play(url as Source);
//                     // await audioPlayer.play(AssetSource(soundPath2));
//                   } catch (e) {
//                     print("Error playing audio: $e");
//                   }
//                 }
//               },
//             ),
//           ),
//           Text(formatTime(position)),
//          Text(formatTime(duration-position)),
//         ],
//       ),
//     );
//   }
// }
//
//
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart' hide AudioPlayer;
//
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('AudioPlayer Example'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               playSound();
//             },
//             child: Text("Play Sound"),
//           ),
//         ),
//       ),
//     );
//   }
//
//   AudioPlayer audioPlayer = AudioPlayer();
//
//   Future<void> playSound() async {
//     String soundPath1 = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3";
//     try {
//       await audioPlayer.play(UrlSource(soundPath1));
//       // await audioPlayer.play(AssetSource(soundPath2));
//     } catch (e) {
//       print("Error playing audio: $e");
//     }
//
//   }
// }

// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image Picker Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const ImagePickerWidget(),
//     );
//   }
// }
//
// class ImagePickerWidget extends StatefulWidget {
//   const ImagePickerWidget({super.key});
//
//   @override
//   ImagePickerWidgetState createState() => ImagePickerWidgetState();
// }
//
// class ImagePickerWidgetState extends State<ImagePickerWidget> {
//   File? _selectedImage;
//   final picker = ImagePicker();
//
//   Future<void> _pickImageFromGallery() async {
//     final pickedImage = await picker.pickImage(source: ImageSource.gallery);
//     if (pickedImage == null) return;
//
//     setState(() {
//       _selectedImage = File(pickedImage.path);
//     });
//   }
//   Future<void> _pickImageFromCamera() async {
//     final pickedImage = await picker.pickImage(source: ImageSource.camera);
//     if (pickedImage == null) return;
//
//     setState(() {
//       _selectedImage = File(pickedImage.path);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Image Picker Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             _selectedImage != null
//                 ? Image.file(_selectedImage!)
//                 : const Text('No image selected.'),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 // Uncomment this section if you want to enable picking from camera
//                 FloatingActionButton(
//                   onPressed: () => _pickImageFromCamera(),
//                   tooltip: 'Pick Image from camera',
//                   child: const Icon(Icons.add_a_photo),
//                 ),
//                 const SizedBox(width: 20),
//                 FloatingActionButton(
//                   onPressed: () => _pickImageFromGallery(),
//                   tooltip: 'Pick Image from gallery',
//                   child: const Icon(Icons.wallpaper),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:provider/provider.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: Firebase.initializeApp(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           return ChangeNotifierProvider(
//             create: (context) => AuthProvider(),
//             child: MaterialApp(
//               title: 'Google Sign-In with Firebase',
//               theme: ThemeData(
//                 primarySwatch: Colors.blue,
//               ),
//               home: const SignInScreen(),
//             ),
//           );
//         } else {
//           return const CircularProgressIndicator();
//         }
//       },
//     );
//   }
// }
//
// class AuthProvider extends ChangeNotifier {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   User? get currentUser => _auth.currentUser;
//
//   Future<void> signInWithGoogle() async {
//     try {
//       final GoogleSignIn googleSignIn = GoogleSignIn();
//       final GoogleSignInAccount? googleSignInAccount =
//       await googleSignIn.signIn();
//       if (googleSignInAccount != null) {
//         final GoogleSignInAuthentication googleSignInAuthentication =
//         await googleSignInAccount.authentication;
//         final AuthCredential credential = GoogleAuthProvider.credential(
//           accessToken: googleSignInAuthentication.accessToken,
//           idToken: googleSignInAuthentication.idToken,
//         );
//         await _auth.signInWithCredential(credential);
//         notifyListeners();
//       }
//     } catch (error) {
//       if (kDebugMode) {
//         print('Error signing in with Google: $error');
//       }
//     }
//   }
//
//   Future<void> signOut() async {
//     await _auth.signOut();
//     notifyListeners();
//   }
// }
//
// class SignInScreen extends StatelessWidget {
//   const SignInScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Google Sign-In with Firebase'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () async {
//             await Provider.of<AuthProvider>(context, listen: false)
//                 .signInWithGoogle();
//           },
//           child: const Text('Sign in with Google'),
//         ),
//       ),
//     );
//   }
// }
//


// import 'package:flutter/material.dart';
//
// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => new _MainPageState();
// }
//
// class PageInfoData {
//   final String title;
//   final IconData iconData;
//   const PageInfoData(this.title, this.iconData);
// }
//
// class _MainPageState extends State<MainPage> {
//   int _selectedIndex = 0;
//
//   static  List<PageInfoData> pageInfo = [
//     PageInfoData('History', Icons.swap_horiz),
//     PageInfoData('Download', Icons.file_download),
//     PageInfoData('Photo', null), // Replace null with your desired icon
//     PageInfoData('Upload', Icons.file_upload),
//     PageInfoData('Settings', Icons.settings),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Text("Menu"),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.search, color: Colors.white),
//             onPressed: () {
//               // Handle search action
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Text('Index $_selectedIndex: ${pageInfo[_selectedIndex].title}'),
//       ),
//       backgroundColor: Colors.white,
//       bottomNavigationBar: Theme(
//         data: Theme.of(context).copyWith(
//           splashColor: Colors.transparent, // Disable splash effect
//           highlightColor: Colors.transparent, // Disable highlight effect
//         ),
//         child: BottomNavigationBar(
//           items: List.generate(pageInfo.length, (int index) {
//             PageInfoData curPageInfo = pageInfo[index];
//             return BottomNavigationBarItem(
//               icon: Icon(curPageInfo.iconData, size: 30.0),
//               icon: Text(curPageInfo.title, style: TextStyle(fontSize: 9.0)),
//             );
//           }),
//           type: BottomNavigationBarType.fixed,
//           unselectedItemColor: const Color(0xff797979),
//           fixedColor: Theme.of(context).primaryColor,
//           backgroundColor: const Color(0xffe2e2e2),
//           currentIndex: _selectedIndex,
//           showUnselectedLabels: true,
//           onTap: _onItemTapped,
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Color(0xffa2a5a4),
//         child: Icon(Icons.photo_camera, size: 40.0),
//         onPressed: () {
//           // Handle photo button press
//         },
//       ),
//     );
//   }
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
// }
//


import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SamplePage(),
    );
  }
}

class SamplePage extends StatefulWidget {
  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  late List<bool> isSelected;

  @override
  void initState() {
    // Initialize the list with the desired number of buttons
    isSelected = [true, false, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToggleButtons Demo'),
      ),
      body: Center(
        child: ToggleButtons(
          children: <Widget>[
            // First toggle button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('First'),
            ),
            // Second toggle button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Second'),
            ),
            // Third toggle button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Third'),
            ),
          ],
          // Logic for button selection below
          onPressed: (int index) {
            setState(() {
              for (int i = 0; i < isSelected.length; i++) {
                isSelected[i] = i == index;
              }
            });
          },
          isSelected: isSelected,
        ),
      ),
    );
  }
}

