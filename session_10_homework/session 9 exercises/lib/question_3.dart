/*
Q3
Given an array of integers nums sorted in ascending order, and an integer target, write a function to
search target in nums.

- If target exists, return its index. Otherwise, return -1.
- The algorithm must run in O(log n) time complexity.

Examples:

- Input: nums = [-1,0,3,5,9,12], target = 9 → Output: 4
Explanation: 9 exists in nums and its index is 4.

- Input: nums = [-1,0,3,5,9,12], target = 2 → Output: -1
Explanation: 2 does not exist in nums, so return -1.

*/
void main() {
  List<int> nums = [-1, 0, 3, 5, 9, 12];
  int target = 9;
  int result = searchTarget(nums, target);

  print(result);
}

int searchTarget(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    int low = 0;
    int high = nums.length - 1;
    int mid = (low + high) ~/ 2;
    if (target == nums[i]) {
      return i;
    } else if (target < nums[mid]) {
      low = mid + 1;
    } else if (target > nums[mid]) {
      high = mid - 1;
    }
  }
  return -1;
}
