// ~/llvm/debug/build/bin/clang -O3 -target mips-unknown-linux-gnu -S ch8_2_phinode_2.cpp -emit-llvm -o ch8_2_phinode_2.ll
// ~/llvm/test/build/bin/llc -march=cpu0 -mcpu=cpu032I -relocation-model=pic -filetype=asm ch8_2_phinode_2.ll -o -

/// start
int test_phinode(int m , int n)
{
  int x = n;
  int y = m;
  
  if (x < y) {
    x = x+1;
    y = y-1;
  }
  else {
    y = x+2;
  }
  int z = x*y;
  
  return z;
}
