List<int> twoSum1(List<int> nums, int target) {
  Map<int, int> map = {};
  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];
    if (map.containsKey(complement)) {
      return [map[complement]!, i];
    }
    map[nums[i]] = i;
  }
  return [];
}

List<int> twoSum2(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        return [i, j];
      }
    }
  }
  return [];
}

List<int> twoSum3(List<int> nums, int target) {
  List<int> sortedNums = List.from(nums)..sort();
  int left = 0, right = sortedNums.length - 1;
  while (left < right) {
    int sum = sortedNums[left] + sortedNums[right];
    if (sum == target) {
      return [
        nums.indexOf(sortedNums[left]),
        nums.lastIndexOf(sortedNums[right])
      ];
    } else if (sum < target) {
      left++;
    } else {
      right--;
    }
  }
  return [];
}

List<int> twoSum4(List<int> nums, int target) {
  Set<int> seen = {};
  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];
    if (seen.contains(complement)) {
      return [nums.indexOf(complement), i];
    }
    seen.add(nums[i]);
  }
  return [];
}

List<int> twoSum5(List<int> nums, int target) {
  List<MapEntry<int, int>> indexedNums = nums.asMap().entries.toList();
  indexedNums.sort((a, b) => a.value.compareTo(b.value));
  int left = 0, right = indexedNums.length - 1;
  while (left < right) {
    int sum = indexedNums[left].value + indexedNums[right].value;
    if (sum == target) {
      return [indexedNums[left].key, indexedNums[right].key];
    } else if (sum < target) {
      left++;
    } else {
      right--;
    }
  }
  return [];
}
