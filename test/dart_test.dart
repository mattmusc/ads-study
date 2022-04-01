import 'package:algo_ds/algo/single_linked_list.dart';
import 'package:test/test.dart';

void main() {
  test('SingleLinkedList', () {
    expect(SingleLinkedList().root, isNull);
    
    var withInt = SingleLinkedList.withNode(Node(3));
    expect(withInt.root, isNotNull);
    expect(withInt.root?.value, equals(3));

    expect(SingleLinkedList.withNode(Node('hello')).root?.value, equals('hello'));
    
    var withValues = SingleLinkedList.withValues([3, 4, 5]);
    expect(withValues.root?.value, equals(3));
    expect(withValues.root?.next, isNotNull);
    expect(withValues.root?.next?.value, equals(4));
    expect(withValues.root?.next?.next?.value, equals(5));
  });
}
