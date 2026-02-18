/*
136. Single Number

Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

You must implement a solution with a linear runtime complexity and use only constant extra space.

Example 1:

Input: nums = [2,2,1]

Output: 1

Example 2:

Input: nums = [4,1,2,1,2]

Output: 4

Example 3:

Input: nums = [1]

Output: 1

Constraints:

1 <= nums.length <= 3 * 104
-3 * 104 <= nums[i] <= 3 * 104
Each element in the array appears twice except for one element which appears only once.
*/

// the correct solution for o(n) complexity but not with constant extra space

// int singleNumber(List<int> nums) {
//   Map<int, int> count = {};
//   for (var element in nums) {
//     count[element] = (count[element] ?? 0) + 1;
//   }
//   int result = 0;
//   for (var element in count.entries) {
//     if (element.value == 1) {
//       result = element.key;
//       break;
//     }
//   }
//   return result;
// }

// the correct solution for o(n) complexity and with constant extra space using bit manipulation (logic gates)

int singleNumber(List<int> nums) {
  int result = 0;

  for (var n in nums) {
    result ^= n;
  }
  return result;
}
