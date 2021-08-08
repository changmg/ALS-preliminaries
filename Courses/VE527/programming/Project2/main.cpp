#include <iostream>
#include <stdio.h>
#include <cassert>
#include <string.h>
#include <vector>
#include <algorithm>
#include <numeric>
#include <limits.h>


using namespace std;


class cube_list_t
{
public:
    int N;
    vector <string> values;
    string allDCCube;

    explicit cube_list_t(int _n) :
        N(_n)
    {
        for (int i = 0; i < N; ++i)
            allDCCube.append("-");
    }

    cube_list_t(const cube_list_t & other)
    {
        N = other.N;
        allDCCube = other.allDCCube;
        values.assign(other.values.begin(), other.values.end());
    }

    cube_list_t & operator = (const cube_list_t & other)
    {
        N = other.N;
        allDCCube = other.allDCCube;
        if (this == &other)
            return * this;
        vector <string>().swap(values);
        values.assign(other.values.begin(), other.values.end());
        return * this;
    }

    ~cube_list_t() {}

    void AddCube(const char * cube)
    {
        assert((int)strlen(cube) == N);
        values.push_back(string(cube));
    }

    int CheckSimple(void)
    {
        // empty cube list
        if (values.empty())
            return 1;
        // cube list contains all don't cares cube
        vector <string>::iterator iter = values.begin();
        for (; iter != values.end(); ++iter)
            if (*iter == allDCCube)
                return 2;
        // cube list contains just one cube
        if (values.size() == 1)
            return 3;
        return 0;
    }

    friend ostream & operator << (ostream &, cube_list_t &);
};


cube_list_t comple(const cube_list_t & F, int condition)
{
    cube_list_t cubeListBar(F.N);
    // empty cube list
    if (condition == 1)
        cubeListBar.values.push_back(cubeListBar.allDCCube);
    // cube list contains all don't cares cube
    else if (condition == 2)
        vector <string>().swap(cubeListBar.values);
    // cube list contains just one cube
    else if (condition == 3) {
        string s = F.values[0];
        assert((int)(s.length()) == F.N);
        for (int i = 0; i < F.N; ++i) {
            if (s[i] == '0') {
                string sNew = cubeListBar.allDCCube;
                sNew[i] = '1';
                cubeListBar.values.push_back(sNew);
            }
            else if (s[i] == '1') {
                string sNew = cubeListBar.allDCCube;
                sNew[i] = '0';
                cubeListBar.values.push_back(sNew);
            }
            else if (s[i] != '-') {
                cout << "invalid cube value" << endl;
                assert(0);
            }
        }
    }
    else {
        cout << "invalid condition" << endl;
        assert(0);
    }
#ifdef DEBUG
    cout << "simple complement :\n" << cubeListBar << endl;
#endif
    return cubeListBar;
}


int SplitVar(cube_list_t & F)
{
    // collect information
    vector <int> cntT(F.N, 0);
    vector <int> cntF(F.N, 0);
    vector <string>::iterator iter = F.values.begin();
    for (; iter != F.values.end(); ++iter) {
        assert(F.N == (int)(iter->length()));
        for (int i = 0; i < F.N; ++i) {
            if ((*iter)[i] == '0')
                ++cntF[i];
            else if ((*iter)[i] == '1')
                ++cntT[i];
            else if ((*iter)[i] != '-') {
                cout << "invalid value" << endl;
                assert(0);
            }
        }
    }
    bool existBinate = false;
    for (int i = 0; i < F.N; ++i)
        if (cntF[i] && cntT[i]) {
            existBinate = true;
            break;
        }
    vector <int> cnt(F.N, 0);
    for (int i = 0; i < F.N; ++i)
        cnt[i] = cntT[i] + cntF[i];
#ifdef DEBUG
    cout << "existBinate = " << existBinate << endl;
    cout << "index\t";
    for (int i = 0; i < F.N; ++i)
        cout << i << "\t";
    cout << endl;
    cout << "T\t";
    for (int i = 0; i < F.N; ++i)
        cout << cntT[i] << "\t";
    cout << endl;
    cout << "F\t";
    for (int i = 0; i < F.N; ++i)
        cout << cntF[i] << "\t";
    cout << endl;
    cout << "tot\t";
    for (int i = 0; i < F.N; ++i)
        cout << cnt[i] << "\t";
    cout << endl;
#endif
    // there are binate variables
    if (existBinate) {
        // pick the binate variables in the most cubes
        int maxCnt = -1;
        vector <int> mostBiVars;
        for (int i = 0; i < F.N; ++i) {
            if (cntT[i] && cntF[i]) {
                if (cnt[i] > maxCnt) {
                    maxCnt = cnt[i];
                    mostBiVars.clear();
                    mostBiVars.push_back(i);
                }
                if (cnt[i] == maxCnt)
                    mostBiVars.push_back(i);
            }
        }
        assert(maxCnt != -1);
        if (mostBiVars.size() == 1)
            return mostBiVars[0];
        // break ties with the smallest |T-C|
        int minTMC = INT_MAX;
        int var = -1;
        for (vector <int>::iterator it = mostBiVars.begin();
            it != mostBiVars.end(); ++it) {
            int TMC = abs(cntT[*it] - cntF[*it]);
            // break ties with the smallest variable index
            if (TMC < minTMC) {
                minTMC = TMC;
                var = *it;
            }
        }
        assert(var != -1);
        return var;
    }
    // there are no binate variables
    else {
        int var = -1;
        int maxCnt = -1;
        // pick the unate variable in the most cubes
        for (int i = 0; i < F.N; ++i)
            // break ties with the smallest variable index
            if (cnt[i] > maxCnt) {
                var = i;
                maxCnt = cnt[i];
            }
        assert(var != -1);
        assert(maxCnt != -1);
        return var;
    }
    cout << "split failed" << endl;
    assert(0);
    return 0;
}


cube_list_t Cofactor(cube_list_t & F, int x, bool isPositive)
{
    cube_list_t FRet(F);
    vector <string>::iterator iter = FRet.values.begin();
    for (; iter != FRet.values.end();) {
        assert(FRet.N == (int)(iter->length()));
        bool isErase = false;
        if ((isPositive && (*iter)[x] == '0') ||
            (!isPositive && (*iter)[x] == '1')) {
            isErase = true;
        }
        else if ((isPositive && (*iter)[x] == '1') ||
            (!isPositive && (*iter)[x] == '0')) {
            (*iter)[x] = '-';
        }
        if (isErase)
            iter = FRet.values.erase(iter);
        else
            ++iter;
    }
#ifdef DEBUG
    cout << "isPositive = " << isPositive << endl;
    cout << "var = " << x << endl;
    cout << "F =\n" << F << endl;
    cout << "Cofactor =\n" << FRet << endl;
#endif
    return FRet;
}


cube_list_t AND(int var, char type, cube_list_t & F)
{
    cube_list_t FRet(F);
    vector <string>::iterator iter = FRet.values.begin();
    for (; iter != FRet.values.end(); ++iter) {
        assert(FRet.N == (int)(iter->length()));
        (*iter)[var] = type;
    }
#ifdef DEBUG
    cout << "var = " << var << endl;
    cout << "F =\n" << F << endl;
    cout << "type = " << type << endl;
    cout << "AND(var, F) =\n" << FRet << endl;
#endif
    return FRet;
}


cube_list_t OR(cube_list_t & P, cube_list_t & Q)
{
    assert(P.N == Q.N);
    cube_list_t FRet(P);
    // question: remove same pattern?
    FRet.values.insert(FRet.values.end(), Q.values.begin(), Q.values.end());
#ifdef DEBUG
    cout << "P =\n" << P << endl;
    cout << "Q =\n" << Q << endl;
    cout << "OR(P, Q) =\n" << FRet << endl;
#endif
    return FRet;
}


cube_list_t Complement(cube_list_t & F)
{
    // check is F is simple enough to complement it directly and quit
    int condition = F.CheckSimple();
#ifdef DEBUG
    cout << "F =\n" << F << endl;
    cout << "condition = " << condition << endl;
#endif
    if (condition) {
        return comple(F, condition);
    }
    // do recursion
    else {
        int x = SplitVar(F);
#ifdef DEBUG
        cout << "split var " << x << endl;
#endif
        cube_list_t P = Cofactor(F, x, true);
        P = Complement(P);
        cube_list_t N = Cofactor(F, x, false);
        N = Complement(N);
        P = AND(x, '1', P);
        N = AND(x, '0', N);
        return OR(P, N);
    }
}


inline ostream & operator << (ostream & os, cube_list_t & cubeList)
{
    vector <string>::iterator iter = cubeList.values.begin();
    for (; iter != cubeList.values.end(); ++iter)
        cout << *iter << endl;
    return os;
}


int main(int argc, char * argv[])
{
    if (argc != 2) {
        cout << "Wrong number of command-line arguments." << endl;
        return 0;
    }
    char * fileName = argv[1];
    FILE * fp = nullptr;
    assert(fp = fopen(fileName, "r"));
    int N = 0;
    assert(fscanf(fp, "%d", &N));
    assert(N > 0);
    char str[10000];
    cube_list_t F(N);
    while (fscanf(fp, "%s", str) != EOF) {
        assert((int)strlen(str) == N);
        F.AddCube(str);
    }
    fclose(fp);
#ifdef DEBUG
    cout << "input function :\n" << F << endl;
#endif
    cube_list_t Fbar = Complement(F);
    cout << Fbar.N << endl;
    cout << Fbar;
    return 0;
}
