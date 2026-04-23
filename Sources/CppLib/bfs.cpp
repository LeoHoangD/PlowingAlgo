#include "bfs.hpp"
#include <queue>
#include <iostream>
#include <fstream> // Required for ifstream

namespace graph {
void BFS::doBFS(int s) {
    for (int i = 0; i < V; i++) {
        visted[i] = false;
        path[i] = -1;
    }

    queue<int> q;
    visted[s] = true;
    q.push(s);

    while(!q.empty()) {
        int u = q.front();
        q.pop();
        for (int i = 0; i < graph[u].size(); i++) {
            int v = graph[u][i];
            if (!visted[v]) {
                visted[v] = true;
                q.push(v);
                path[v] = u;
            }
        }
    }
}

void BFS::printPath(int s, int f) {
    vector<int> b;
    if (f == s) {
        cout << s << endl;
        return;
    }

    if (path[f] == -1) {
        cout << "No path\n";
        return;
    }

    while (f != -1) {
        b.push_back(f);
        f = path[f];
    }

    for (int i = b.size() - 1; i >= 0; i--) {
        cout << b[i] << " ";
    }
}

void BFS::printPathRecursion(int s, int f) {
    if (s == f) {
        cout << f << " ";
    }
    else if (path[f] == -1) {
        cout << "No path\n";
    }
    else {
        printPathRecursion(s, path[f]);
        cout << f << " ";
    }
}

void BFS::runExample() {
    int u, v;
    ifstream file("/Users/huehue/Developer/Algo/PlowingAlgo/input.txt");
    // ifstream file("input.txt");

    if (!file.is_open()) {
        cerr << "Could not open input.txt!" << endl;
        return;
    }

    file >> V >> E;

    for (int i = 0; i < E; i++) {
        file >> u >> v;
        graph[u].push_back(v);
        graph[v].push_back(u);
        std::cout << "u " << u << " v " << v << "\n";
    }

    int s = 2; int f = 4;
    doBFS(s);
    printPath(s, f);
}
}