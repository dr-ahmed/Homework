import 'dart:collection';

class Solution {
  bool containsDuplicate(List<int> nums) {
    var seen = HashSet<int>();
    for (var num in nums) {
      if (seen.contains(num)) {
        return true;
      }
      seen.add(num);
    }
    return false;
  }
}
