#include<string>
#include"testlib.h"
using namespace std;

const int MaxN = 1000'000;

int main(int argc, char* argv[])
{
    registerValidation(argc, argv);

    int n = inf.readInt(1, MaxN, "n");
    inf.readSpace();
    int m = inf.readInt(1, MaxN, "m");

    inf.readEoln();

    for (int i = 0; i < n; i++)
    {
        string test = inf.readToken(format("[01]{%d}", m), "a_" + std::to_string(i));
        inf.readEoln();
    }

    inf.readEof();

    return 0;
}