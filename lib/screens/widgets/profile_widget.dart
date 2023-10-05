import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final double circleradius;
  final double fsize;

  const Profile({
    super.key,
    required this.circleradius,
    required this.fsize,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 800;
          return isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    CircleAvatar(
                      radius: circleradius,
                      backgroundImage: const NetworkImage(
                        'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Text(
                      'Mohammed Siyad',
                      style: TextStyle(fontSize: fsize),
                    ),
                    SizedBox(
                      width: size.width*0.5,
                      child:const Divider(
                        color: Colors.amber,
                      ),
                    ),
                    Text('Flutter Developer',
                        style: TextStyle(fontSize: fsize)),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: circleradius,
                      backgroundImage: const NetworkImage(
                        'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          child: Divider(
                            color: Colors.amber,
                          ),
                        ),
                        Text(
                          'Mohammed Siyad',
                          style: TextStyle(fontSize: fsize),
                        ),
                        SizedBox(
                          width: size.width*0.2,
                          child:const Divider(color: Colors.amber,),
                        ),
                        Text('Flutter Developer',
                            style: TextStyle(fontSize: fsize)),
                      ],
                    ),
                  ],
                );
        },
      ),
    );
  }
}
