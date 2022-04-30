import time

def tarai(x, y, z):
    if (x <= y):
        return y
    else:
        return tarai(tarai(x-1, y, z),
                     tarai(y-1, z, x),
                     tarai(z-1, x, y))

t1 = time.time()
print(tarai(15,8,0))
print('time=' + str(time.time()-t1))


