import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'running_schedule_chart.dart';

class BarChartPage extends StatefulWidget {
  const BarChartPage({super.key});
  @override
  State<BarChartPage> createState() => _BarChartPageState();
}

class _BarChartPageState extends State<BarChartPage> {
  final int likeCount = 999;
  final double buttonSize = 40.0;
  final GlobalKey<LikeButtonState> _globalKey = GlobalKey<LikeButtonState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff232040),
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const SizedBox(height: 45.0),
          const BarChartSample1(),
          const SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LikeButton(
                size: buttonSize,
                circleColor: const CircleColor(
                    start: Color(0xff00ddff), end: Color(0xff0099cc)),
                bubblesColor: const BubblesColor(
                  dotPrimaryColor: Color(0xff33b5e5),
                  dotSecondaryColor: Color(0xff0099cc),
                ),
                likeBuilder: (bool isLiked) {
                  return Icon(
                    Icons.directions_walk,
                    color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
                    size: buttonSize,
                  );
                },
              ),
              const SizedBox(width: 45.0),
              LikeButton(
                size: buttonSize,
                circleColor: const CircleColor(
                    start: Color(0xff00ddff), end: Color(0xff0099cc)),
                bubblesColor: const BubblesColor(
                  dotPrimaryColor: Color(0xff33b5e5),
                  dotSecondaryColor: Color(0xff0099cc),
                ),
                likeBuilder: (bool isLiked) {
                  return Icon(
                    Icons.pedal_bike,
                    color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
                    size: buttonSize,
                  );
                },
              ),
            ],
          ),
          const SizedBox(
            width: 400,
            height: 50,
            child: Text(
              '최근 활동',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true, // 리스트 자식 높이 크기의 합 만큼으로 영역 고정
            physics: const NeverScrollableScrollPhysics(), // 스크롤 안되도록 설정하는 옵션 값
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Text(
                'Row $index',
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    /// send your request here
    // final bool success= await sendRequest();

    /// if failed, you can do nothing
    // return success? !isLiked:isLiked;

    return !isLiked;
  }
}
