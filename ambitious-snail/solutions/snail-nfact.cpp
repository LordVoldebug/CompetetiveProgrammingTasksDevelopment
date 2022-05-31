#include <bits/stdc++.h>

#define int long long
using namespace std;

void solve();

void fast_io() {
    ios_base::sync_with_stdio(false);
    cin.tie(nullptr);
}

signed main() {
    fast_io();
    solve();
    return 0;
}

struct powerup {
    int up;
    int down;
    int id;
};

int get_f(vector<powerup> a, vector<int> p){
    int sum = 0;
    int ans = 0;
    for (auto i : p){
        sum += a[i].up;
        ans = max(ans, sum);
        sum -= a[i].down;
    }
    return ans;
}

void solve() {
    int n;
    cin >> n;
    vector<powerup> a(n);
    for (int i = 0; i < n; ++i) {
        cin >> a[i].up >> a[i].down;
        a[i].id = i;
    }
    int bst = 0;

    vector<int> p(n);
    for (int i = 0; i < n; ++i){
        p[i] = i;
    }
    do {
        bst = max(bst, get_f(a, p));
    } while (next_permutation(p.begin(), p.end()));

    for (int i = 0; i < n; ++i){
        p[i] = i;
    }
    do {
        if (bst == get_f(a, p)) {
            cout << bst << endl;
            for (auto i : p){
                cout << i + 1 << ' ';
            }
            cout << endl;
            return;
        }
    } while (next_permutation(p.begin(), p.end()));
}