
#include <vector>
#include <queue>
#include "bfs_exercise.hpp"

using namespace std;
namespace bfs_exercise {

constexpr int MAX = 100;
vector<int> graph[MAX];
bool visited[MAX];
int path[MAX];

void BFS(int start) {
    queue<int> q;
    q.push(start);
    visited[start] = true;

    while (!q.empty()) {
        int u = q.front();
        q.pop();

        for (int i = 0; i < graph[u].size(); i++) {
            int v = graph[u][i];

            if (!visited[v]) {
                q.push(v);
                visited[v] = true;
                path[v] = u;
            }
        }
    }
}

void bfs1(std::fstream& file) {
    int Q, v, e, g, h, start;
    file >> Q;

    while (Q--) {

        for (int i = 0; i < MAX; i++) {
            graph[i].clear();
            visited[i] = false;
        }
        
        file >> v >> e;

        for (int i = 0; i < e; i++) {
            file >> g >> h;
            graph[g].push_back(h);
            graph[h].push_back(g);
        }

        file >> start;
        BFS(start);

        
    }
}
}