import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  final String appbar;
  FirstScreen({super.key, required this.appbar});

  List<Map<String, dynamic>> contactLis = [
    {
      'name': 'Afaq',
      "location": 'Peshawar',
      'icons': Icons.person,
      'trail': Icons.menu,
    },
    {
      'name': 'Afridi',
      "location": 'Peshawar',
      'icons': Icons.person,
      'trail': Icons.menu,
    },
    {
      'name': 'Afaq',
      "location": 'Peshawar',
      'icons': Icons.person,
      'trail': Icons.menu,
    },
    {
      'name': 'Afaq',
      "location": 'Peshawar',
      'icons': Icons.person,
      'trail': Icons.more_vert,
    },
    // {
    //   'name': 'Afaq',
    //   "location": 'Peshawar',
    //   'icons': Icons.person,
    //   'trail': Icons.three_g_mobiledata,
    // },
    // {
    //   'name': 'Afaq',
    //   "location": 'Peshawar',
    //   'icons': Icons.person,
    //   'trail': Icons.sip_rounded,
    // },
    // {
    //   'name': 'Afaq',
    //   "location": 'Peshawar',
    //   'icons': Icons.person,
    //   'trail': Icons.sip_rounded,
    // },
    // {
    //   'name': 'Afaq',
    //   "location": 'Peshawar',
    //   'icons': Icons.person,
    //   'trail': Icons.sip_rounded,
    // },
    // {
    //   'name': 'Afaq',
    //   "location": 'Peshawar',
    //   'icons': Icons.person,
    //   'trail': Icons.sip_rounded,
    // },
  ];

  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appbar)),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: 20,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1.6,
                  childAspectRatio: .7,

                  mainAxisSpacing: 11.6,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      isShow = !isShow;
                    },
                    child: Container(
                      color: Colors.green,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 96,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Color(0xffF7931A),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Center(child: Text("15% off")),
                              ),

                              Icon(Icons.favorite),
                            ],
                          ),

                          Center(
                            child: Image.asset('assets/logo.png', scale: 5),
                          ),

                          SizedBox(height: 5),

                          Row(
                            children: List.generate(4, (index) {
                              return Icon(Icons.star);
                            }),
                          ),

                          ListTile(
                            trailing: Container(
                              width: 40,
                              height: 49,
                              decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(child: Icon(Icons.add)),
                            ),
                            title: Text('Logo'),
                            subtitle: Text("Food Logo"),
                          ),
                          isShow ? Text("discroito") : SizedBox.shrink(),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // ListView.separated(
            //   separatorBuilder: (context, index) {
            //     return SizedBox(height: 10);
            //   },
            //   shrinkWrap: true,
            //   itemCount: contactLis.length,
            //   itemBuilder: (context, afdas) {
            //     return Column(
            //       children: [
            //         Container(
            //           width: double.infinity,
            //           height: 80,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(15.0),
            //             gradient: LinearGradient(
            //               colors: [
            //                 Colors.blue.shade200,
            //                 Colors.purple.shade100,
            //               ],
            //               begin: Alignment.topLeft,
            //               end: Alignment.bottomRight,
            //             ),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: Colors.grey.withOpacity(0.3),
            //                 spreadRadius: 2,
            //                 blurRadius: 5,
            //                 offset: const Offset(
            //                   0,
            //                   3,
            //                 ), // changes position of shadow
            //               ),
            //             ],
            //           ),
            //           child: ListTile(
            //             leading: Container(
            //               width: 80,
            //               height: 80,
            //               decoration: BoxDecoration(
            //                 shape: BoxShape.circle,
            //                 color: Colors.white.withOpacity(0.7),
            //                 border: Border.all(color: Colors.red, width: 5),
            //               ),
            //               child: Icon(
            //                 Icons.person,
            //                 size: 40,
            //                 color: Colors.blue.shade700,
            //               ), // Placeholder icon
            //             ),
            //             trailing: Icon(contactLis[afdas]['trail']),
            //             title: Text(contactLis[afdas]['name']),
            //             subtitle: Text("Flutter"),
            //           ),
            //         ),
            //       ],
            //     );
            //   },
            // ),

            // Text("data", style: TextStyle(fontSize: 50)),
            // Container(
            //   width: double.infinity,
            //   height: 80,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(15.0),
            //     gradient: LinearGradient(
            //       colors: [Colors.blue.shade200, Colors.purple.shade100],
            //       begin: Alignment.topLeft,
            //       end: Alignment.bottomRight,
            //     ),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.3),
            //         spreadRadius: 2,
            //         blurRadius: 5,
            //         offset: const Offset(0, 3), // changes position of shadow
            //       ),
            //     ],
            //   ),
            //   child: ListTile(
            //     leading: Container(
            //       width: 80,
            //       height: 80,
            //       decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         color: Colors.white.withOpacity(0.7),
            //         border: Border.all(color: Colors.white, width: 2),
            //       ),
            //       child: Icon(
            //         Icons.person,
            //         size: 40,
            //         color: Colors.blue.shade700,
            //       ), // Placeholder icon
            //     ),
            //     trailing: Icon(Icons.settings),
            //     title: Text("Afaq"),
            //     subtitle: Text("Flutter"),
            //   ),
            //   //   Row(
            //   //     children: <Widget>[
            //   //       // Circular Avatar Placeholder
            //   //       Container(
            //   //         width: 80,
            //   //         height: 80,
            //   //         decoration: BoxDecoration(
            //   //           shape: BoxShape.circle,
            //   //           color: Colors.white.withOpacity(0.7),
            //   //           border: Border.all(color: Colors.white, width: 2),
            //   //         ),
            //   //         child: Icon(
            //   //           Icons.person,
            //   //           size: 40,
            //   //           color: Colors.blue.shade700,
            //   //         ), // Placeholder icon
            //   //       ),
            //   //       const SizedBox(width: 20),
            //   //       Column(
            //   //         crossAxisAlignment: CrossAxisAlignment.start,
            //   //         children: const <Widget>[
            //   //           Text(
            //   //             "Khurram Saeed",
            //   //             style: TextStyle(
            //   //               fontSize: 22,
            //   //               fontWeight: FontWeight.bold,
            //   //               color: Colors.black87,
            //   //             ),
            //   //           ),
            //   //           Text(
            //   //             "Flutter Developer",
            //   //             style: TextStyle(fontSize: 16, color: Colors.black54),
            //   //           ),
            //   //         ],
            //   //       ),
            //   //     ],
            //   //   ),
            //   // ),
            // ),

            // SizedBox(height: 10),
            // Container(
            //   width: double.infinity,
            //   height: 80,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(15.0),
            //     gradient: LinearGradient(
            //       colors: [Colors.blue.shade200, Colors.purple.shade100],
            //       begin: Alignment.topLeft,
            //       end: Alignment.bottomRight,
            //     ),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.3),
            //         spreadRadius: 2,
            //         blurRadius: 5,
            //         offset: const Offset(0, 3), // changes position of shadow
            //       ),
            //     ],
            //   ),
            //   child: ListTile(
            //     leading: Container(
            //       width: 80,
            //       height: 80,
            //       decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         color: Colors.white.withOpacity(0.7),
            //         border: Border.all(color: Colors.white, width: 2),
            //       ),
            //       child: Icon(
            //         Icons.person,
            //         size: 40,
            //         color: Colors.blue.shade700,
            //       ), // Placeholder icon
            //     ),
            //     trailing: Icon(Icons.settings),
            //     title: Text("Afaq"),
            //     subtitle: Text("Flutter"),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

//  Container(
//           color: Colors.grey.shade200,
//           height: 400,
//           width: 300,
//           child: Stack(
//             children: [
//               Image.asset('assets/logo.png'),

//               Container(width: 100, height: 100, color: Colors.red),

//               Positioned(
//                 top: 30,
//                 left: 10,
//                 child: Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.deepPurple,
//                 ),
//               ),
//               Positioned(
//                 top: 60,
//                 left: 20,
//                 child: Container(width: 100, height: 100, color: Colors.yellow),
//               ),
//             ],
//           ),
//         ),
