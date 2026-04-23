#pragma once
#include <vector>


namespace graph {
constexpr int MAX = 100;
using namespace std;
class BFS {
    int V;
    int E;

    bool visted[MAX];
    int path[MAX];
    vector<int> graph[MAX];
public:
    BFS() {}
    BFS(int v, int e) : V(v), E(e) {}

    void doBFS(int s);
    void printPath(int s, int f);
    void printPathRecursion(int s, int f);
    void runExample();
};

};

