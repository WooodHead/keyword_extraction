#include <iostream>
#include <fstream>
#define MAX_LENGTH 5000
using namespace std;
char info[MAX_LENGTH];
int main(){
	ifstream fin;
	ofstream fout;
	fin.open("fully_arranged_word.txt");
	if(!fin.good()){
		cout << "open fully_arranged_words.txt error!\n";
		exit(1);
	}
	fout.open("weighed_words.txt");
	if(!fout.good()){
		cout << "open weighed_words.txt error!\n";
		exit(1);
	}
	string keyword;
	while(fin >> keyword){
		fin.getline(info, MAX_LENGTH);
		fout << keyword << ' ' << 10000 << endl; 
	}
	fin.close();
	fout.close();
	return 0;
}