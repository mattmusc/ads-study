import 'package:algo_ds/algo/single_linked_list.dart';
import 'package:test/test.dart';

void main() {
  test('SingleLinkedList Creation', () {
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

  test('SingleLinkedList Find', () {
    expect(SingleLinkedList.withValues([3, 4, 5]).findNode(4), isNotNull);
    expect(SingleLinkedList.withValues(['foo', 'bar']).findNode('hello'), isNull);
  });

  test('SingleLinkedList Find Index', () {
    expect(SingleLinkedList.withValues([3, 4, 5]).findIndex(4), equals(1));
    expect(SingleLinkedList.withValues(['foo', 'bar']).findIndex('hello'), equals(-1));
  });
}
