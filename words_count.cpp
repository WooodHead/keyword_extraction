#include <iostream>
#include <fstream>
#include <cstring>
#include <string>
#include <iomanip>
#include <vector>
using namespace std;
vector<int> v[4000];
int main()
{
	ifstream fin1;
	ofstream fout;
	fin1.open("fully_arranged_word.txt");
	if (!fin1.good())
	{
		cout << "open words.txt error!\n";
		exit(1);
	}
	fout.open("count_words.txt");
	if (!fout.good())
	{
		cout << "open count_words.txt error!" << endl;
		exit(1);
	}
	fout << endl;
	string word;
	int count = 1;
	ifstream fin3;
	//将每个句子对应的关键词读到一个二维数组里，方便查找
	fin3.open("keyword3.txt");
	int keyword_count;
	for (int i = 0; i < 4000; i++)
	{
		fin3 >> keyword_count;
		for (int j = 0; j < keyword_count; j++)
		{
			int keyword_num;
			fin3 >> keyword_num;
			v[i].push_back(keyword_num);
		}
	}
	fin3.close();
	while (fin1 >> word)
	{
		int sentence;
		int weight;
		fin1 >> weight;
		int keywords[350] = { 0 };
		for (int i = 0; i < weight; i++)
		{
			fin1 >> sentence;
			for (int j = 0; j < v[sentence - 1].size(); j++)
				keywords[v[sentence - 1][j]]++;//找到每个单词所在句子的所有关键词，将表格中计数加1
		}
		fout << word << " ";
		for (int i = 1; i <= 349; i++)
			fout << keywords[i] << " ";
		count++;
		fout << endl;
	}
	fin1.close();
	fout.close();
}