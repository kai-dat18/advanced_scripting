
def bin_low_mid_high(number, mid_thresh, high_thresh):
    if mid_thresh >= high_thresh:
        return "User error: thresholds not strictly increasing!"
    if number < mid_thresh:
        return "low"
    if number < high_thresh:
        return "mid"
    return "high"

print ([bin_low_mid_high(num, 4, 6) for num in range(10)])
print (bin_low_mid_high(3, 6, 4))