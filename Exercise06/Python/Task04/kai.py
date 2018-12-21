import dill

def a(x):
    return x + 1

def c(x):
    def d(y):
        return y * 3
    return x + d(x)

l = [1, "abc", lambda x: x ** 2, lambda x: a(x) ** 2, c]

print(l[2](3))
print(l[3](3))
print(l[4](1))

with open("save_list.dill" , "wb") as save_file:
    dill.dump(l, save_file)

with open("save_list.dill", "rb") as save_file:
    b = dill.load(save_file)
    print(b[2](3))
    print(b[3](3))
    print(b[4](1))



