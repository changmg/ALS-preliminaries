#include "network.h"

using namespace std;

//file reading parameters
const int max_length_per_line = 1000;
const int max_line_of_file = 1000;

//error list
const int file_open_error = 1;
const int and_input_num_error = 2;
const int or_input_num_error = 3;
const int nand_input_num_error = 4;
const int nor_input_num_error = 5;
const int xor_input_num_error = 6;
const int xnor_input_num_error = 7;
const int not_input_num_error = 8;
const int buf_input_num_error = 9;
const int input_parameter_error = 10;

//./main test.bench test.value > test.out
int main( int argc, char** argv )
{
	if (argc != 3)
		return input_parameter_error;

	FILE *file_in = NULL;
	if ((file_in = fopen(argv[1], "r")) == NULL)
		return file_open_error;

	char msg_original[max_length_per_line];
	char msg_tmp[max_length_per_line];
	char msg_trim[max_length_per_line];
	char msg_tmp_1[max_length_per_line];
	char msg_trim_1[max_length_per_line];

	vector <node> NODE;
	vector <edge> EDGE;
	while (!feof(file_in))
	{
		if (fgets(msg_original, max_length_per_line, file_in))
		{
			strRemov1(msg_trim_1, msg_original, '\t');
			strRemov1(msg_trim, msg_trim_1);
			strRemov1(msg_tmp_1, msg_original, '\t');
			strRemov1(msg_tmp, msg_tmp_1);
			_strlwr_s1(msg_trim);					            //msg_trim is a lower case form string with no ' ' and '\n'
			if (msg_trim[0] == '#' || msg_trim[0] == '\0')		//skip the explanation and empty lines
				continue;
			else if (!strncmp(msg_trim, "input", 5))		    //for example,INPUT(X1)
			{
				char *id = new char[max_length_per_line];
				strncpy(id, msg_tmp + 6, strlen(msg_tmp) - 7);
				id[strlen(msg_tmp) - 7] = '\0';
				vector<node>::iterator it = find_if(NODE.begin(), NODE.end(), node_duplicate_check(id));
				if (it == NODE.end())
					NODE.push_back(node("", id, in));
				else
					(*it).dir = in;
			}
			else if (!strncmp(msg_trim, "output", 6))		    //for example,OUTPUT(X2)
			{
				char *id = new char[max_length_per_line];
				strncpy(id, msg_tmp + 7, strlen(msg_tmp) - 8);
				id[strlen(msg_tmp) - 8] = '\0';
				vector<node>::iterator it = find_if(NODE.begin(), NODE.end(), node_duplicate_check(id));
				if (it == NODE.end())
					NODE.push_back(node("", id, out));
				else
					(*it).dir = out;
			}
			else							                    //for example,Y0=AND(X1,X2,X3,X4)
			{
				char *pos_equal = NULL, *pos_left_bracket = NULL, *str = NULL, *tmp = NULL;
				char *np = new char[max_length_per_line], *id = new char[max_length_per_line];

				pos_equal = strchr(msg_trim, '=');		        //find the position of '='
				pos_left_bracket = strchr(msg_trim, '(');	    //find the position of '('

				strncpy(id, msg_tmp, pos_equal - msg_trim);	    //extract the node name
				id[pos_equal - msg_trim] = '\0';

				strncpy(np, pos_equal + 1, pos_left_bracket - pos_equal - 1);//extract the type of gate
				np[pos_left_bracket - pos_equal - 1] = '\0';

				vector<node>::iterator v = find_if(NODE.begin(), NODE.end(), node_duplicate_check(id));
				if (v == NODE.end())				            //if the element is not in the stack
				{
					NODE.push_back(node(np, id, not_io));
					v = NODE.begin() + NODE.size() - 1;
				}
				else						                    //if the element is in the stack
					(*v).property = np;

				str = msg_tmp + (pos_left_bracket - msg_trim + 1);
				tmp = new char[100];
				int len = 0;
				while (*str)					                //extract the node between two brackets,maintain the edges and adjacent table
				{
					if (*str == ',' || *str == ')')
					{
						tmp[len] = '\0';
						vector<node>::iterator u = find_if(NODE.begin(), NODE.end(), node_duplicate_check(tmp));
						if (u == NODE.end())
						{
							NODE.push_back(node("", tmp, not_io));
							u = NODE.begin() + NODE.size() - 1;
                            EDGE.push_back(edge(u - NODE.begin(), v - NODE.begin()));
                            (*u).neighbour_node.push_back(v - NODE.begin());
                            (*v).input_node.push_back(u - NODE.begin());
						}
						else
						{
                            EDGE.push_back(edge(u - NODE.begin(), v - NODE.begin()));
                            (*u).neighbour_node.push_back(v - NODE.begin());
                            (*v).input_node.push_back(u - NODE.begin());
						}
						len = 0;
						tmp = new char[100];
					}
					else
					{
						tmp[len] = *str;
						len++;
					}
					str++;
				}

			}
		}
	}
	fclose(file_in);

	if ((file_in = fopen(argv[2], "r")) == NULL)
		return file_open_error;

	vector <val> value;
	while (!feof(file_in))
	{
		if (fgets(msg_original, max_length_per_line, file_in))		//renew the values of nodes on the input pins
		{
			strRemov1(msg_trim_1, msg_original, '\t');
			strRemov1(msg_trim, msg_trim_1);
			strRemov1(msg_tmp_1, msg_original, '\t');
			strRemov1(msg_tmp, msg_tmp_1);
			_strlwr_s1(msg_trim);
			char *id = new char[max_length_per_line];
			strncpy(id, msg_tmp, strlen(msg_tmp) - 1);
			id[strlen(msg_tmp) - 1] = '\0';
			if (!is_input_exist(value, id))
			{
				value.push_back(val(id, msg_trim[strlen(msg_trim) - 1] - '0'));
				vector<node>::iterator it = find_if(NODE.begin(), NODE.end(), node_duplicate_check(id));
				if (it != NODE.end()) {
					(*it).value = msg_trim[strlen(msg_trim) - 1] - '0';
                }
			}
		}
	}
	fclose(file_in);

	vector <int> sequence;
	sequence = topological_sort(NODE, EDGE);				        //topological sort

	for (unsigned int i = 0; i < NODE.size(); i++)					//check whether the number of gate input is valid
	{
		if (!strcmp(NODE[i].property, "and") && NODE[i].in_degree < 2)
			return and_input_num_error;
		else if (!strcmp(NODE[i].property, "or") && NODE[i].in_degree < 2)
			return or_input_num_error;
		else if (!strcmp(NODE[i].property, "nand") && NODE[i].in_degree < 2)
			return nand_input_num_error;
		else if (!strcmp(NODE[i].property, "nor") && NODE[i].in_degree < 2)
			return nor_input_num_error;
		else if (!strcmp(NODE[i].property, "xor") && NODE[i].in_degree < 2)
			return xor_input_num_error;
		else if (!strcmp(NODE[i].property, "xnor") && NODE[i].in_degree < 2)
			return xnor_input_num_error;
		else if (!strcmp(NODE[i].property, "not") && NODE[i].in_degree != 1)
			return not_input_num_error;
		else if (!strcmp(NODE[i].property, "buf") && NODE[i].in_degree != 1)
			return buf_input_num_error;
	}

	for (unsigned int i = 0; i < sequence.size(); i++) {
		int v = sequence[i];
		vector<int> fanin = NODE[v].input_node;
        //printf("%s\n", NODE[v].id);
        if (!strcmp(NODE[v].property, "and"))
        {
            NODE[v].value = NODE[fanin[0]].value;
		    for (unsigned int j = 1; j < fanin.size(); j++)
                NODE[v].value &= NODE[fanin[j]].value;
        }
        else if (!strcmp(NODE[v].property, "or"))
        {
            NODE[v].value = NODE[fanin[0]].value;
		    for (unsigned int j = 1; j < fanin.size(); j++)
                NODE[v].value |= NODE[fanin[j]].value;
        }
        else if (!strcmp(NODE[v].property, "nand"))
        {
            NODE[v].value = NODE[fanin[0]].value;
		    for (unsigned int j = 1; j < fanin.size(); j++)
                NODE[v].value &= NODE[fanin[j]].value;
            NODE[v].value = !NODE[v].value;
        }
        else if (!strcmp(NODE[v].property, "nor"))
        {
            NODE[v].value = NODE[fanin[0]].value;
		    for (unsigned int j = 1; j < fanin.size(); j++)
                NODE[v].value |= NODE[fanin[j]].value;
            NODE[v].value = !NODE[v].value;
        }
        else if (!strcmp(NODE[v].property, "xor"))
        {
            NODE[v].value = NODE[fanin[0]].value;
		    for (unsigned int j = 1; j < fanin.size(); j++)
                NODE[v].value ^= NODE[fanin[j]].value;
        }
        else if (!strcmp(NODE[v].property, "xnor"))
        {
            NODE[v].value = NODE[fanin[0]].value;
		    for (unsigned int j = 1; j < fanin.size(); j++)
                NODE[v].value = !(NODE[v].value ^ NODE[fanin[j]].value);
        }
        else if (!strcmp(NODE[v].property, "not"))
        {
            NODE[v].value = !NODE[fanin[0]].value;
        }
        else if (!strcmp(NODE[v].property, "buf"))
        {
            NODE[v].value = NODE[fanin[0]].value;
        }
    }

	for (unsigned int i = 0; i < NODE.size(); i++)
		if (NODE[i].dir == out)
			printf("%s %d\n",NODE[i].id,NODE[i].value);

    return 0;
}
