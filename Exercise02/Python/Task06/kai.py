import numpy as np

def statSum(*args, remove_nan = True):
    if not remove_nan and any(map(np.isnan, args)):
        max, min, sum, mean = np.nan, np.nan, np.nan, np.nan
    else:
        max, min, sum, mean = np.nanmax(args), np.nanmin(args), np.nansum(args), np.nanmean(args)
    print("len:  %i" % len(args))
    print("max:  %s" % max)
    print("min:  %s" % min)
    print("sum:  %s" % sum)
    print("mean: %s" % mean)

statSum(1, 2, 3, np.nan, remove_nan = True)
statSum(1, 2, 3, np.nan, remove_nan = False)