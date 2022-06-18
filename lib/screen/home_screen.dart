import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                // Material State
                //
                // hovered - 호버링 상태 (마우스 커서를 올려놓은 상태)
                // focused - 포커스 됐을 때 (텍스트 필드)
                // pressed - 눌렀을 때
                // dragged - 드래그 됐을 때
                // selected - 선택 됐을 때 (체크박스, 라디오 버튼)
                // scrollUnder - 다른 컴포넌트 밑으로 스크롤링 됐을 때
                // disabled - 비활성화 됐을 때 (onPressed: null)
                // error - 에러상태
                backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      print('MaterialState.pressed');
                      return Colors.white;
                    }
                    // return null; > 기본값
                    return Colors.red;
                  },
                ),
                padding: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      print('MaterialState.pressed');
                      return EdgeInsets.all(100.0);
                    }
                    // return null; > 기본값
                    return EdgeInsets.all(20.0);
                  },
                ),
              ),
              child: Text('ButtonStyle'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // 메인 칼라 (배경색)
                primary: Colors.red,
                // 글자 및 애니메이션 색깔
                onPrimary: Colors.black,
                // 그림자 색깔
                shadowColor: Colors.green,
                // 3D 입체감의 높이
                elevation: 10.0,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                padding: EdgeInsets.all(32.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 4.0,
                ),
              ),
              child: Text('ElevatedButton'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                // 글자 및 애니메이션 색깔
                primary: Colors.green,
                backgroundColor: Colors.orange,
                elevation: 10.0,
              ),
              child: Text('OutlinedButton'),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.brown,
                backgroundColor: Colors.blue,
              ),
              child: Text('TextButton'),
            ),
          ],
        ),
      ),
    );
  }
}
