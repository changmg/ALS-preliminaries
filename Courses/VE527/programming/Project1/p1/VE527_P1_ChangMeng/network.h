#ifndef NETWORK_H
#define NETWORK_H

#include <cstdio>
#include <string.h>
#include <vector>
#include <iostream>
#include <algorithm>

//i/o direction
enum pin_direction {
    in,
    out,
    not_io
};

//values of input pins
class val
{
public:
    char *INPUT_SIG;
    int VALUE;
    val(char *str = NULL, int num = -1) { INPUT_SIG = str; VALUE = num; }
};

//edge
class edge
{
public:
    int u;
    int v;
    edge(int uu = 0, int vv = 0) { u = uu; v = vv; }
};

//node with the method of adjacent table
class node
{
public:
    char * property;                    //type of gate
    char * id;                          //node name(lower case)
    pin_direction dir;                  //i/o direction
    std::vector <int> neighbour_node;	//neighbours of the node
    std::vector <int> input_node;	    //neighbours of the node
    bool value;				            //value
    bool visited;				        //whether the node is visited at the first time
    int in_degree;				        //incoming degree
    node(char * np = NULL, char *name = NULL, pin_direction dir_tmp = not_io, bool value_tmp = 0,bool visited = 0,int in_d = -1)
    {
        property = np;
        id = name;
        dir = dir_tmp;
        value = value_tmp;
        in_degree = in_d;
    }
};

//used to check if the node has already in the vector
class node_duplicate_check
{
public:
	char *str;
	bool operator () (node &tmp) { return (!strcmp(tmp.id, str)); }
	node_duplicate_check(char *str_tmp) { str = str_tmp; }
};

//used to check if the input value has been already in the vector
class val_duplicate_check
{
public:
	char *str;
	bool operator () (val &tmp) { return (!strcmp(tmp.INPUT_SIG, str)); }
	val_duplicate_check(char *str_tmp) { str = str_tmp; }
};

std::vector <int> topological_sort(std::vector <node>&NODE, std::vector <edge>&EDGE);
bool is_input_exist(std::vector <val> value, char *id);
char * strRemov1(char* dst, const char* src, char ch = ' ');
char * _strlwr_s1(char *s);

#endif
