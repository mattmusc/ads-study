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

    /// Returns the node with the value passed or null if the node was not found
    Node<T>? findNode(T value) {
      if (this.root == null) {
        return null;
      }

      Node<T> current = this.root!;
      while (current.next != null) {
        if (current.value == value) {
          return current;
        }
        current = current.next!;
      }

      return null;
    }

    /// Returns the index of the node with the value passed or -1 if the node was not found
    int findIndex(T value) {
      if (this.root == null) {
        return -1;
      }

      int index = 0;
      Node<T> current = this.root!;

      while (current.next != null) {
        if (current.value == value) {
          return index;
        }
        current = current.next!;
        index += 1;
      }

      return -1;
    }
}
