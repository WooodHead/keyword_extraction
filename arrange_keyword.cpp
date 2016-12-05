#include <iostream>
#include <fstream>
#include <stdlib.h>
#define KEY_SIZE 50
#define MAX_LENGTH 2000
using namespace std;
char info[MAX_LENGTH];
int main(){
	ifstream fin;
	ofstream fout;
	fin.open("keyword.txt");
	if(!fin.good()){
		cout << "open keyword.txt error!\n";
		exit(1);
	}
	fout.open("clearly_arranged_keywords.txt");
	if(!fout.good()){
		cout << "open clearly_arranged_keywords.txt error!\n";
		exit(2);
	}
	char keyword[KEY_SIZE];
	string header;
	fin.getline(info, MAX_LENGTH);
	while(fin.get() != EOF){
		fin.getline(info, MAX_LENGTH);
		fin >> header;
		fin.get();
		fin.getline(keyword, KEY_SIZE);
		fout << keyword << endl;
		cout << keyword << endl;
		//system("pause");
		fin.getline(info, MAX_LENGTH);
		fin.getline(info, MAX_LENGTH);
	}
	fin.close();
	fout.close();
	return 0;
}