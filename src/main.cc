#include "seed.hh"
#include <iostream>

int main() {
  std::vector<int> v = seed(3);
  for (auto i: v)
    std::clog << "Printing: " << i << ' ';
  std::clog << std::endl;
  return 0;
}