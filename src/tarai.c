#include <stdio.h>

int tarai(int x, int y, int z) {
  if (x<=y) {
    return y;
  } else {
    return tarai(tarai(x-1, y, z),
                 tarai(y-1, z, x),
                 tarai(z-1, x ,y));
  }
}

int main(void) {
  printf("%i\n",tarai(15,8,0));
  return 0;
}
// $ time ./a.out
// 15
// 6.91 secs



