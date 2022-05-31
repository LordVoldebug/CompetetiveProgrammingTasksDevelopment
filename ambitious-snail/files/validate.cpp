#include <bits/stdc++.h>
#include "testlib.h"

using namespace std;

int maxN = 500'000;
int maxA = 1e9;


int main(int argc, char* argv[]) {
    registerValidation(argc, argv);
    int n = inf.readInt(1, maxN, "n");
    inf.readEoln();
    for (int i = 0; i < n; ++i){
        inf.readInt(0, maxA, "a");
        inf.readSpace();
        inf.readInt(0, maxA, "b");
        inf.readEoln();
    }
    inf.readEof();
}

