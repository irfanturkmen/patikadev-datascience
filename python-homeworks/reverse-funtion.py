# Function that reverses the elements in the given list.
# Example usage:
# input: [[1, 2], [3, 4], [5, 6, 7]]
# output: [[[7, 6, 5], [4, 3], [2, 1]]

output = []
def reverse(input):
    for i in input:
        if type(i) == list:
            output.append(i[::-1])
    return output[::-1]
print(reverse(input=[[1, 2], [3, 4], [5, 6, 7]]))