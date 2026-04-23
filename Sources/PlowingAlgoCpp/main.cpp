#include <fstream>
#include <iostream>
#include "bfs.hpp"
#include "bfs_exercise.hpp"

using namespace std;
int main() {
    std::cout << "--------- PlowingAlgo is running from cpp ---------\n";

    fstream file("/Users/huehue/Developer/Algo/PlowingAlgo/input.txt");
    bfs_exercise::bfs1(file);

    file.close();
    return 0;
}

