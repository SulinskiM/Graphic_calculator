#include "tree.h"
#include <iostream>
#include <vector>
#include "function.h"
#include "tools.h"

using namespace std;

Tree::Tree()
{

}

struct Node
{
    Node* left = NULL;
    Node* right = NULL;
    Node* parent = NULL;
    Unit* value;
};

Node* create_tree(string ONP)
{
    vector<Node*> STACK;
    for (int i = 0; i < ONP.size(); i++)
    {
        if (is_operator(ONP[i]))
        {
            Node* a = STACK.back();
            STACK.pop_back();
            Node* b = STACK.back();
            STACK.pop_back();

            Node* node = new Node();
            node->value = new Operation(ONP[i]);
            node->left = a;
            node->right = b;
            a->parent = node;
            b->parent = node;

            STACK.push_back(node);
        }
        else if(ONP[i] == 'x')
        {
            Node* node = new Node();
            node->value = new Unknown(ONP[i]);
            STACK.push_back(node);
        }
        else
        {
            Node* node = new Node();
            node->value = new Number(ONP[i]);
            STACK.push_back(node);
        }
    }
    return STACK.back();
}
