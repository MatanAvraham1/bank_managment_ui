import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 36.w, top: 45.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        "assets/images/menu.svg",
                        color: Color(0xff596579),
                        height: 36.h,
                        width: 47.w,
                      ),
                      SizedBox(height: 59.h),
                      buildTextGradient(
                        Text("TRIBHUVAN\nSUTHAR",
                            style: GoogleFonts.cuprum(
                              fontSize: 40.sp,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text("upi@trix",
                          style: GoogleFonts.cuprum(
                              fontSize: 24.sp, color: Color(0xff78797a))),
                    ],
                  ),
                  SizedBox(width: 149.w),
                  Container(
                    width: 208.w,
                    height: 208.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                        image: AssetImage(
                          "assets/images/user_profile.png",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 51.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 201.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    buildTextGradient(
                      Text("1,76,000",
                          style: GoogleFonts.cuprum(
                              fontSize: 54.sp, color: Colors.white)),
                    ),
                    SizedBox(width: 7.w),
                    buildTextGradient(
                      Text("CR",
                          style: GoogleFonts.cuprum(
                              fontSize: 30.sp, color: Colors.white)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 41.h),
              Row(
                children: [
                  buildActionTile("Cards", "assets/images/credit_cards.svg",
                      Size(41.w, 51.h), true),
                  SizedBox(width: 19.w),
                  buildActionTile(
                    "Transfer",
                    "assets/images/transfer.svg",
                    Size(41.w, 41.h),
                  ),
                  SizedBox(width: 19.w),
                  buildActionTile(
                    "PayPal",
                    "assets/images/paypal.svg",
                    Size(35.w, 41.h),
                  ),
                  SizedBox(width: 19.w),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 29.h),
        Divider(),
        ListTile(
          title: Text("MasterCard",
              style: GoogleFonts.cuprum(
                  fontSize: 22.sp, color: Color(0xffb5bfcd))),
          subtitle: Text("HDFC Bank",
              style: GoogleFonts.cuprum(
                  fontSize: 18.sp, color: Color(0xffb5bfcd))),
          leading: SvgPicture.asset("assets/images/mastercard.svg",
              height: 43.h, width: 72.w),
          trailing: Text("\$ 11,000",
              style: GoogleFonts.cuprum(
                  fontSize: 30.sp, color: Color(0xffb5bfcd))),
        ),
        Divider(),
        ListTile(
          title: Text("Visa Card",
              style: GoogleFonts.cuprum(
                  fontSize: 22.sp, color: Color(0xffb5bfcd))),
          subtitle: Text("HDFC Bank",
              style: GoogleFonts.cuprum(
                  fontSize: 18.sp, color: Color(0xffb5bfcd))),
          leading: SvgPicture.asset("assets/images/visa.svg",
              height: 21.h, width: 71.w),
          trailing: Text("\$ 1,55,000",
              style: GoogleFonts.cuprum(
                  fontSize: 30.sp, color: Color(0xffb5bfcd))),
        ),
        ListTile(
          title: Text("Maestro Card",
              style: GoogleFonts.cuprum(
                  fontSize: 22.sp, color: Color(0xffb5bfcd))),
          subtitle: Text("SBI Bank",
              style: GoogleFonts.cuprum(
                  fontSize: 18.sp, color: Color(0xffb5bfcd))),
          leading: SvgPicture.asset("assets/images/maestro.svg",
              height: 45.h, width: 72.w),
          trailing: Text("\$ -1,000",
              style: GoogleFonts.cuprum(
                  fontSize: 30.sp, color: Color(0xffb5bfcd))),
        )
      ],
    );
  }

  Container buildActionTile(String title, String iconAssetUrl, Size iconSize,
      [bool isActive = false]) {
    return Container(
      height: 115.h,
      width: 161.w,
      decoration: BoxDecoration(
        gradient: isActive
            ? LinearGradient(
                colors: [Color(0xff3adde7), Color(0xff1d6da9)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )
            : null,
        color: isActive ? null : Color(0xff253042),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconAssetUrl,
            width: iconSize.width,
            height: iconSize.height,
            color: isActive ? Colors.white : Color(0xff78797a),
          ),
          SizedBox(
            height: 13.h,
          ),
          Text(
            title,
            style: GoogleFonts.cuprum(
              fontSize: 24.sp,
              color: isActive ? Colors.white : Color(0xff78797a),
            ),
          ),
        ],
      ),
    );
  }

  ShaderMask buildTextGradient(Text text) {
    return ShaderMask(
        shaderCallback: (bounds) => LinearGradient(
              colors: [Color(0xff3adde7), Color(0xff1d6da9)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            ),
        child: text);
  }
}
