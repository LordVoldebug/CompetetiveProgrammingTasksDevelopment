#pragma GCC optimize("Ofast")
#include <bits/stdc++.h>
#define endl '\n'
#define all(a) (a).begin(), (a).end()
#define len(a) (int) (a).size()
#define forn(i, n) for (int (i) = 0; (i) < (n); ++(i))
#define int long long
using namespace std;
void solve();
mt19937 rnd(2007);
signed main(){
#ifdef LOCAL
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
#else
    mt19937 rng(chrono::steady_clock::now().time_since_epoch().count());
    swap(rng, rnd);
#endif
    ios_base::sync_with_stdio(false);
    cin.tie(nullptr);

    solve();
}

vector<vector<int>> calc_up(vector<vector<int>> a){
    vector<vector<int>> up(len(a), vector<int>(len(a[0])));
    up[0] = a[0];
    for (int i = 1; i < len(a); ++i){
        for (int j = 0; j < len(a[0]); ++j){
            if (a[i][j] == 0){
                up[i][j] = 0;
            }
            else {
                up[i][j] = up[i - 1][j] + 1;
            }
        }
    }
    return up;
}

int get_biggest(vector<int> a){
    int ans = 0;
    for (int l = 0; l < len(a); ++l){
        int mn = a[l];
        for (int r = l; r < len(a); ++r){
            mn = min(mn, a[r]);
            ans = max(ans, mn * (r - l + 1));
        }
    }
    return ans;
}

int solve(vector<vector<int>> a){
    if (len(a) == 0){
        return 0;
    }
    int n = len(a), m = len(a[0]);
    auto up = calc_up(a);
    reverse(all(a));
    auto down = calc_up(a);
    vector<int> p_up(n + 1), p_down(n + 1);
    forn (i, n) {
        p_up[i + 1] = max(p_up[i], get_biggest(up[i]));
        p_down[i + 1] = max(p_down[i], get_biggest(down[i]));
    }
    int ans = 0;
    for (int i = 0; i <= n; ++i){
        ans = max(ans, p_up[i] + p_down[n - i]);
    }
    return ans;
}

void solve() {
    int n, m;
    cin >> n >> m;
    vector<string> ain(n);
    forn (i, n) cin >> ain[i];
    vector<vector<int>> a(n, vector<int>(m)), at(m, vector<int>(n));
    forn (i, n) {
        forn (j, m) {
            a[i][j] = ain[i][j] - '0';
            at[j][i] = a[i][j];
        }
    }
    cout << max(solve(a), solve(at)) << endl;
} 
