import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/product_repository.dart';
part 'home_widget_controller.g.dart';

class HomeWidgetState {
  List<String> categories = [];
  HomeWidgetState({this.categories = const []});
}

@riverpod
class HomeWidgetController extends _$HomeWidgetController {
  @override
  FutureOr<HomeWidgetState> build() async {
    return _homeWidgetState();
  }

  Future<HomeWidgetState> _homeWidgetState() async {
    final productRepository = ref.read(productRepositoryProvider);
    state = const AsyncLoading();
    final categories = await productRepository.listProductCategories();
    return HomeWidgetState(categories: categories);
  }

  Future<void> getCategory () async {
    final homeWidgetState = await _homeWidgetState();
    state = AsyncValue.data(homeWidgetState);
  }
}

