// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:readmore/readmore.dart';

class ReBookingCard1 extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _ReBookingCard1 createState() => _ReBookingCard1();
}

class _ReBookingCard1 extends State<ReBookingCard1> {
  String content =
      "Văn Miếu Quốc Tử Giám (Văn Miếu Quốc Tử Giám tiếng anh: The Temple of Literature) là một trong những di sản văn hóa lâu đời và quý giá của dân tộc Việt Nam, nơi đây đã thu hút đông đảo du khách đến thăm trong chuyến du lịch Hà Nội của mình. Tọa lạc tại phía Nam của kinh thành Thăng Long, quần thể di tích Văn Miếu Quốc Tử Giám là nơi tập trung những kiến trúc đặc sắc như hồ Văn, vườn Giám và Văn Miếu (nơi thờ Khổng Tử) – Quốc Tử Giám (trường đại học đầu tiên của Việt Nam). Đây là nơi thờ 3 vị vua anh minh của dân tộc: Lý Thánh Tông, Lý Nhân Tông và Lê Thánh Tông. Trước đây, Văn Miếu – Quốc Tử Giám là nơi đào tạo hàng nghìn nhân tài cho đất nước. Ngày nay, địa điểm này là nơi khen tặng những học sinh xuất sắc và đồng thời cũng là nơi diễn ra nhiều hoạt động truyền thống, dân gian nhằm giữ gìn và bảo tồn văn hóa cổ truyền. Văn Miếu (Văn Miếu) được xây dựng vào năm 1070 dưới triều đại của Hoàng đế Lý Thánh Tông. Trong khi đó, Quốc Tử Giám (Quốc Tử Giám) được vua Lý Nhân Tông thành lập năm 1076 là nơi chỉ dành riêng cho con của hoàng đế và các gia đình quan quyền quý. Vào năm 1253, Quốc Tử Giám đổi sang với tên gọi Quốc học viện đã được mở rộng và thu nhận cả con của thường dân có sức học vượt trội xuất sắc. Đến thời vua Trần Minh Tông (1300 – 1357), Chu Văn An được cử giữ chức quan Quốc tử giám tư nghiệp có vai trò tương đương với chức vụ  hiệu trưởng hiện nay, chịu trách nhiệm quản lý mọi hoạt động của Quốc Tử Giám và trực tiếp dạy học cho các hoàng tử. Trong thời gian đó, Văn Miếu – Quốc Tử Giám trở thành trung tâm đào tạo các quan trí thức hàng đầu của đất nước và là nơi tuyển chọn những tài năng giỏi nhất để phục vụ triều đình.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        leadingWidth: 150,
        toolbarHeight: 100,
      ),
      // ignore: prefer_const_constructors
      body: ListView(
        padding: EdgeInsets.all(14),
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/vanmieu.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  height: 400,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 15,
                  bottom: 10,
                ),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Văn Miếu - Quốc Tử Giám",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        child: Column(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30,
                            ),
                            Text(
                              "3K",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        child: Column(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 30,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Container(
                  child: ReadMoreText(
                    content,
                    trimLines: 10,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " Xem thêm ",
                    trimExpandedText: " Ẩn bớt ",
                    lessStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                    moreStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                  left: 100,
                  right: 100,
                ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Rebooking now",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
