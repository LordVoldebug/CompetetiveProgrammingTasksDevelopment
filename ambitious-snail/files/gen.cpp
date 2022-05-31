#include <bits/stdc++.h>
#include "testlib.h"

using namespace std;
const int MAXVAL = 1e9;
pair<int, int> gen_ordered(bool can_equal){
    int a = rnd.next(0, MAXVAL);
    int b = rnd.next(0, MAXVAL);
    if (!can_equal) {
        do {
            a = rnd.next(0, MAXVAL);
            b = rnd.next(0, MAXVAL);
        } while (a == b);
    }
    if (a > b) {
        swap(a, b);
    }
    return {a, b};
}

int main(int argc, char* argv[]) {
    int n, a, b;
    n = atoi(argv[1]);
    a = atoi(argv[2]);
    assert(n >= a);
    b = n - a;
    vector<pair<int, int>> arr;
    for (int i = 0; i < a; ++i) {
        auto res = gen_ordered(false);
        arr.push_back({res.second, res.first});
    }

    for (int i = 0; i < b; ++i) {
        auto res = gen_ordered(false);
        arr.push_back({res.first, res.second});
    }
    shuffle(arr.begin(), arr.end());
    cout << n << '\n';
    for (int i = 0; i < n; ++i){
        cout << arr[i].first << ' ' << arr[i].second << '\n';
    }
    return 0;
}