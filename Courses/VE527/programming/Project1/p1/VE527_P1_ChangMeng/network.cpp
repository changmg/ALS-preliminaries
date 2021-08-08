#include "network.h"

std::vector <int> topological_sort(std::vector <node>&NODE, std::vector <edge>&EDGE)
{
	const int size = NODE.size();
    std::vector <int> cnt;                   //incoming degree
    std::vector <int> sequence;              //topological sequence

	cnt.resize(size, 0);

	//renew the incoming degree
	for (unsigned int i = 0; i < EDGE.size(); i++)
		cnt[EDGE[i].v]++;
	for (int i = 0; i < size; i++)
		NODE[i].in_degree = cnt[i];

	//build incoming degree stack
	int top = -1;
	for (int i = 0; i < size; i++)
	{
		if (cnt[i] == 0)
		{
			cnt[i] = top;
			top = i;
		}
	}
	for (int i = 0; i < size; i++)
	{
		if (top == -1)
		{
			sequence.push_back(-1);
			return sequence;
		}
		int j = top;
		top = cnt[top];
		sequence.push_back(j);
        std::vector <int> v = NODE[j].neighbour_node;
		for (unsigned int k = 0; k < v.size(); k++)
		{
			if (--cnt[v[k]] == 0)
			{
				cnt[v[k]] = top;
				top = v[k];
			}
		}
	}
	return sequence;
}

bool is_input_exist(std::vector <val> value, char *id)
{
    std::vector<val>::iterator it;
	it = find_if(value.begin(), value.end(), val_duplicate_check(id));
	if (it != value.end())
		return 1;
	else
		return 0;
}

char * strRemov1(char* dst, const char* src, char ch)
{
	int i = -1, j = 0;
	while (src[++i])
		if (src[i] != ch && src[i] != '\n')
			dst[j++] = src[i];
	dst[j] = '\0';
	return dst;
}

char * _strlwr_s1(char *s)
{
	char *str;
	str = s;
	while(*str != '\0')
	{
  		if(*str >= 'A' && *str <= 'Z')
	     		*str += 'a'-'A';
	 	str++;
 	}
 	return s;
}
