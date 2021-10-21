# This function flattens lists whose elements are multilayered lists (such as [[3],2]) or non-scaler data. 
# Example usage:
# input: [[1,'a',['cat'],2],[[[3]],'dog'],4,5]
# output: [1,'a','cat',2,3,'dog',4,5]

output = []
def flatten(input):
    for i in input:
        if type(i) == list:
            flatten(i)
        else:
            output.append(i)
    return output

print(flatten(input=[[[1,'a',['cat'],2],[[[3]],'dog'],4,5]]))

