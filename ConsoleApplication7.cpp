#include <iostream>
#include <string>
#include <vector>

using namespace std;

bool is_operator(char);

struct Node
{
    Node* left = NULL;
    Node* right = NULL;
    Node* parent = NULL;
    char value;
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
            node->value = ONP[i];
            node->left = a;
            node->right = b;
            a->parent = node;
            b->parent = node;

            STACK.push_back(node);
        }
        else
        {
            Node* node = new Node();
            node->value = ONP[i];
            STACK.push_back(node);
        }
    }
    return STACK.back();
}

int priority_operator(char znak)
{
    if(znak == '(')
        return 0;
    if(znak == '+' || znak == '-' || znak == ')')
        return 1;
    if(znak == '*' || znak == '/' || znak == '%')
        return 2;
    if(znak == '^')
        return 3;
}

void pre_order(Node* tree)
{
    if (tree)
    {
        cout << tree->value;
        if (tree->left) pre_order(tree->left);
        if (tree->right) pre_order(tree->right);
    }
}

void in_order(Node* tree)
{
    if (tree)
    {
        if (tree->left) in_order(tree->left);
        cout << tree->value;
        if (tree->right) in_order(tree->right);
    }
}

void post_order(Node* tree)
{
    if (tree)
    {
        if (tree->left) post_order(tree->left);
        if (tree->right) post_order(tree->right);
        cout << tree->value;
    }
}

string ONP(string);

int main()
{
    string WONP = ONP("(a*b/c)^(d-e)");
    cout << WONP << endl;
    Node* tree = create_tree(WONP);
    cout << tree->value;
    cout << tree->left->value;
    cout << tree->left->left->value<<endl;
    cout << tree->value;
    cout << tree->right->value;
    cout << tree->right->right->value << endl;
    cout << tree->right->right->right->value << endl;

    pre_order(tree);
    cout << endl;

    in_order(tree);
    cout << endl;

    post_order(tree);
    cout << endl;

    return 0;
}

bool is_operator(char znak)
{
    if (znak == '(' || znak == ')' || znak == '/' || znak == '*' || znak == '+' || znak == '-' || znak == '^')
        return true;
    return false;
}

string ONP(string pattern)
{
    string result = "";
    vector<char> STACK;

    for (int i = 0; i < pattern.size(); i++)
    {
        if (is_operator(pattern[i]))
        {
            if (pattern[i] == '(')
                STACK.push_back(pattern[i]);
            else if (pattern[i] == ')')
            {
                while (STACK.back() != '(')
                {
                    result += STACK.back();
                    //result += " ";
                    STACK.pop_back();
                }
                STACK.pop_back();
            }
            else
            {
                if (STACK.size() == 0)
                {
                    STACK.push_back(pattern[i]);
                }
                else if (priority_operator(pattern[i]) > priority_operator(STACK.back()))
                    STACK.push_back(pattern[i]);
                else
                {
                    if (STACK.size() > 0)
                        while (priority_operator(pattern[i]) <= priority_operator(STACK.back()))
                        {
                            result += STACK.back();
                            //result += " ";
                            STACK.pop_back();
                            if (STACK.size() == 0)
                                break;
                        }
                    STACK.push_back(pattern[i]);
                }
            }
        }
        else
        {
            result += pattern[i];
            //result += " ";
        }
    }
    while (STACK.size() > 0)
    {
        result += STACK.back();
        //result += " ";
        STACK.pop_back();
    }
    return result;
}