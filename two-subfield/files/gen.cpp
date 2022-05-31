#include <bits/stdc++.h>
#include "testlib.h"

using namespace std;

int main(int argc, char* argv[]) {
    int n, m, cnt;
    n = atoi(argv[1]);
    m = atoi(argv[2]);
    cnt = atoi(argv[3]);
    assert(0 <= cnt && cnt <= n * m);
    vector<int> a(n * m);
    for (int i = 0; i < cnt; ++i){
        a[i] = 1;
    }
    shuffle(a.begin(), a.end());
    cout << n << ' ' << m << '\n';
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < m; ++j) {
            cout << a[i * m + j];
        }
        cout << '\n';
    }
    return 0;
}