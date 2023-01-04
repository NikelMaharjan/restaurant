
import 'package:flutter_riverpod/flutter_riverpod.dart';

final indexProvider = StateNotifierProvider<IndexProvider, int>((ref) => IndexProvider(0));


class IndexProvider extends StateNotifier<int>{
  IndexProvider(super.state);

  void change(int index){
    state = index;
  }

}