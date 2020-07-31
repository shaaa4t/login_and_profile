import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileUi extends StatefulWidget {
  @override
  _ProfileUiState createState() => _ProfileUiState();
}

class _ProfileUiState extends State<ProfileUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.grey[50],fontSize: 16),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.deepPurple[800],
                  Colors.deepPurpleAccent,
                ],
                  begin: Alignment.bottomRight
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:24.0,right:24.0,left:24.0,bottom: 8),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            'assets/images/ahmed.jpg',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 100,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Ahmed Shaat',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Gaza State, Palestine',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Contrary to popular belief, Lorem Ipsum is not simply random text.',
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  height: 1.5),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Divider(
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0, top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    //text: 'orders',
                                    children: [
                                      TextSpan(
                                        text: '102 ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Orders',
                                        style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                FlatButton(
                                  color: Colors.orange,
                                  child: Text('FOLLOW',style: TextStyle(color: Colors.white),),
                                  onPressed: () {},
                                ),
                                RichText(
                                  text: TextSpan(
                                    //text: 'orders',
                                    children: [
                                      TextSpan(
                                        text: '173 ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Followers',
                                        style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.15,),
            ListTile(
              title: Text('Purchase history',style: TextStyle(color: Colors.black87,fontSize: 24),),
              leading: Icon(Icons.repeat,color: Colors.cyan[400],),
            ),
            Spacer(),
            Divider(),
            Spacer(),
            ListTile(
              title: Text('Invite a friend',style: TextStyle(color: Colors.black87,fontSize: 24),),
              leading: Icon(Icons.person,color: Colors.cyan[400],),
            ),
            Spacer(),
            Divider(),
            Spacer(),
            ListTile(
              title: Text('Help & support',style: TextStyle(color: Colors.black87,fontSize: 24),),
              leading: Icon(Icons.info,color: Colors.cyan[400],),
            ),
            Spacer(),
            Divider(),
            Spacer(),
            ListTile(
              title: Text('Logout',style: TextStyle(color: Colors.black87,fontSize: 24),),
              leading: Icon(Icons.backspace,color: Colors.cyan[400],),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.08,),
          ],
        ),
      ),
    );
  }
}
