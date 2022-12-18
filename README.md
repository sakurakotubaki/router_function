# 画面遷移のリファレンスアプリ

- extensionで画面遷移のbaseの関数を作成
    - 画面遷移のボタンで短いコードを書くだけで、画面遷移ができる.
    - 使い回しができるので、何処のページでも使える.
    - go_routerに頼らなくても短いコードで記述できる.
    
    
Widget型の関数
```dart
import 'package:flutter/material.dart';

/// [extensionで画面遷移のWidgetを作成する関数を作成]
extension BuildContextE on BuildContext {
  Future<void> to(Widget view) async {
    await Navigator.of(this).push(
      MaterialPageRoute(
        builder: (context) {
          return view;
        },
      ),
    );
  }
}
```

画面遷移するボタン

```dart
ElevatedButton(
  onPressed: () {
  context.to(const NextPage());
},
child: Text('次のページへ')),
```