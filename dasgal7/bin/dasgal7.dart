import 'dart:io';

class Node {
  String? data;
  Node? right;
  Node? left;
  Node(String _data, [Node? _right = null, Node? _left = null]) {
    data = _data;
    right = _right;
    left = _left;
  }
  bool isGreaterThan(Node? other) =>
      int.parse(data.toString()) > int.parse(other!.data.toString());
}

class BinarySearchTree {
  Node? root;
  List<String?>? sortedData;
  BinarySearchTree(String s) {
    root = Node(s);
  }
  void insert(String s) {
    Node newNode = Node(s);
    Node? currentNode = root;
    bool nodeIsInserted = false;
    while (!nodeIsInserted) {
      if (newNode.isGreaterThan(currentNode)) {
        if (currentNode!.right != null) {
          currentNode = currentNode.right;
        } else {
          currentNode.right = newNode;
          nodeIsInserted = true;
        }
      } else {
        if (currentNode!.left != null) {
          currentNode = currentNode.left;
        } else {
          currentNode.left = newNode;
          nodeIsInserted = true;
        }
      }
    }
    sortedData = inOrderTraverse(root);
  }
}

List<String?> inOrderTraverse(Node? root) {
  List<String?> output = [];
  if (root!.left != null) {
    output.addAll(inOrderTraverse(root.left));
  }
  output.add(root.data);
  if (root.right != null) {
    output.addAll(inOrderTraverse(root.right));
  }
  return output;
}

void main(List<String> arguments) {
  print('Enter a number:');
  String? input = stdin.readLineSync()!;
  BinarySearchTree bst = BinarySearchTree(input);
  while (input != 'exit') {
    print('Enter a number or "exit":');
    input = stdin.readLineSync()!;
    if (input == 'exit') {
      break;
    }
    bst.insert(input);
    print('New tree: ' + bst.sortedData.toString());
  }
}
