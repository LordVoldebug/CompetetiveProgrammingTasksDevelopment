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

void solve() {
    int n;
    cin >> n;
    vector<powerup> ups, downs;
    for (int i = 0; i < n; ++i) {
        powerup cur;
        cin >> cur.up >> cur.down;
        cur.id = i;
        if (cur.up > cur.down) {
            ups.push_back(cur);
        } else {
            downs.push_back(cur);
        }
    }
    int sum_ups = 0;

    for (auto i : ups) {
        sum_ups += i.up - i.down;
    }

    int bst = 0;
    for (auto up : ups) {
        bst = max(bst, sum_ups + up.down);
    }
    for (auto down : downs) {
        bst = max(bst, sum_ups + down.up);
    }

    cout << bst << endl;
    for (int i = 0; i < ups.size(); ++i) {
        if (bst == sum_ups + ups[i].down) {
            for (int j = 0; j < ups.size(); ++j){
                if (i == j) continue;
                cout << ups[j].id + 1 << ' ';
            }
            cout << ups[i].id + 1 << ' ';
            for (auto down : downs){
                cout << down.id + 1 << ' ';
            }
            cout << endl;
            return;
        }
    }
    for (int i = 0; i < downs.size(); ++i) {
        if (bst == sum_ups + downs[i].up) {

            for (auto up : ups){
                cout << up.id + 1 << ' ';
            }
            cout << downs[i].id + 1 << ' ';
            for (int j = 0; j < downs.size(); ++j){
                if (i == j) continue;
                cout << downs[j].id + 1 << ' ';
            }
            cout << endl;
            return;
        }
    }
}