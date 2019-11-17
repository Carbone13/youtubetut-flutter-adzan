import 'package:flutter/material.dart';

class Adzan extends StatelessWidget {
  final Color color1 = Color(0xFF8000e8);
  final Color color2 = Color(0xFF34009b);
  final Color color3 = Color(0xFF8133d4);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [color1, color2])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.person,
                color: Colors.white,
              ),
              Icon(Icons.menu, color: Colors.white)
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Alarm Waktu Sholat",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Text(
            "Shalat jadi tepat waktu",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          SizedBox(
            height: 25,
          ),
          _iconText(
              Icon(
                Icons.location_on,
                color: Colors.white,
                size: 15,
              ),
              "Banjar, Jawa Barat",
              "Lokasi Saat ini"),
          SizedBox(
            height: 15,
          ),
          _iconText(
              Icon(
                Icons.directions,
                color: Colors.white,
                size: 15,
              ),
              "12 LS - 10 LS & 77 BT - 99 BB",
              "arah kiblat"),
          SizedBox(
            height: 15,
          ),
          _iconText(
              Icon(
                Icons.calendar_today,
                color: Colors.white,
                size: 15,
              ),
              "01 Ramadhan 1440H",
              "Tanggal Hari Ini"),
          SizedBox(
            height: 25,
          ),
          _waktuSholat("Imsak", "03.40"),
          SizedBox(
            height: 15,
          ),
          _waktuSholat("Shubuh", "03.59"),
          SizedBox(
            height: 15,
          ),
          _waktuSholat("Dhuhur", "11.39"),
          SizedBox(
            height: 15,
          ),
          _waktuSholat("Ashar", "14.59"),
          SizedBox(
            height: 15,
          ),
          _waktuSholat("Maghrib", "17.52"),
          SizedBox(
            height: 15,
          ),
          _waktuSholat("Isya", "18.55"),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                color: Colors.white,
                child: Text("Batal",
                    style:
                        TextStyle(color: color2, fontWeight: FontWeight.bold)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.white,
                child: Text("Simpan",
                    style:
                        TextStyle(color: color2, fontWeight: FontWeight.bold)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              )
            ],
          )
        ],
      ),
    ));
  }

  Widget _iconText(Icon icon, String title, String subTitle) {
    double h = 30;
    double w = 30;
    Container left = Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
          color: color3, borderRadius: BorderRadius.circular(w / 2)),
      child: icon,
    );

    Column right = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: TextStyle(color: Colors.white)),
        Text(subTitle, style: TextStyle(color: Colors.white, fontSize: 10)),
      ],
    );

    return Row(
      children: <Widget>[
        left,
        SizedBox(
          width: 10,
        ),
        right
      ],
    );
  }

  Widget _waktuSholat(String name, String time) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration:
          BoxDecoration(color: color3, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Text(
                time,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.alarm, color: Colors.white)
            ],
          )
        ],
      ),
    );
  }
}
