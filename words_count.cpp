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
	//��ÿ�����Ӷ�Ӧ�Ĺؼ��ʶ���һ����ά������������
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
				keywords[v[sentence - 1][j]]++;//�ҵ�ÿ���������ھ��ӵ����йؼ��ʣ�������м�����1
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