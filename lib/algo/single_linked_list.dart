class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value);
}

class SingleLinkedList<T> {
    Node<T>? root;

    // Creates an empty linked list
    SingleLinkedList();

    /// Creates a linked list with a single node
    SingleLinkedList.withNode(this.root);

    /// Creates a linked list with a single value
    SingleLinkedList.withValue(T value): root = Node(value);

    /// Creates a linked list from a list of values
    SingleLinkedList.withValues(List<T> values) {
      if (values.length > 0) {
        T firstValue = values[0];

        this.root = Node(firstValue);
        Node<T>? current = Node(this.root!.value);
        this.root = current;

        for (var index = 1; index < values.length; index++) {
          if (current != null) {
            current.next = Node(values[index]);
            current = current.next;
          }
        }
      }
    }
}
