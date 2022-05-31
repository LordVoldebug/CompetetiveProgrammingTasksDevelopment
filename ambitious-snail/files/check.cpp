#include "testlib.h"
#include <bits/stdc++.h>

using namespace std;

int FAIL = -2;

struct powerup {
    int up;
    int down;
    int id;
};
int n;
vector<powerup> a;

void read_data() {
    n = inf.readInt();
    a.resize(n);
    for (int i = 0; i < n; ++i) {
        a[i].up = inf.readInt();
        a[i].down = inf.readInt();
    }
}

long long read_answer(InStream& in) {
    long long ans = in.readLong();
    
    vector<int> perm(n);
    for (int i = 0; i < n; ++i) {
        perm[i] = in.readInt();
        perm[i]--;
    }
    vector<bool> used(n);
    for (int i = 0; i < n; ++i){
        if (perm[i] < 0 || perm[i] >= n){
            return FAIL;
        }
        if (used[perm[i]]) {
            return FAIL;
        }
        used[perm[i]] = true;
    }
    long long sum = 0;
    long long res = 0;
    for (auto i : perm){
        sum += a[i].up;
        res = max(res, sum);
        sum -= a[i].down;
    }
    if (res != ans) {
        return FAIL;
    }
    return ans;
}


int main(int argc, char *argv[]) {
    registerTestlibCmd(argc, argv);

    read_data();
    
    long long jans = read_answer(ans);
    long long pans = read_answer(ouf);
    

    if (jans == FAIL) {
        quitf(_fail, "The jury's answer is wrong");
    } else if (pans == FAIL) {
        quitf(_wa, "The jury has a correct answer, but the participant hasn't");
    } else if (pans > jans) {
        quitf(_fail, "Jury's answer is not optimal");
    } else if (jans != pans) {
        quitf(_wa, "Participant answer is not optimal");
    } else if (jans == pans) {
        quitf(_ok, "The jury and the participant had found the correct answer");
    }
}
