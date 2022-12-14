import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          child: Stack(
            children: <Widget>[
              ClipPath(
                clipper: CustomShape(),
                child: Container(height: 150, color: Colors.green),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 130,
                      width: 140,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 8),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/profile.jpg'),
                        ),
                      ),
                    ),
                    const Text(
                      "Scrapper Name",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "09482440776",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    const ChangeAddress(),
                    const LogOut(),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
class ChangeAddress extends StatelessWidget {
  const ChangeAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            children: const <Widget>[
              Image(
                image: NetworkImage('https://i.ibb.co/z69rwvk/Group-12517.png'),
              ),
              SizedBox(width: 20),
              Text(
                "Change Address",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.black,
              )
            ],
          ),
        ));
  }
}

class LogOut extends StatelessWidget {
  const LogOut({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          children: const <Widget>[
            Image(
              image: NetworkImage('https://i.ibb.co/B6yXgJ4/Group-12334-1.png'),
            ),
            SizedBox(width: 20),
            Text(
              "Log out",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 130);
    path.quadraticBezierTo(width / 2, 130, width, height - 130);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}