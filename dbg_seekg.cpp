#include <iostream>
#include <fstream>
#define KEYWORDS_NUM 349
#define WORDS_NUM 21788
using namespace std;
int main(){
	ifstream fin;
	ofstream fout;
	fin.open("words_rate.data", ios::binary);
	if(!fin.good()){
		cout << "open words_rate.data error!\n";
		exit(1);
	}
	fout.open("dbg_words_rate_all.txt");
	if(!fout.good()){
		cout << "open dbg_words_rate_108.txt error!\n";
		exit(2);
	}
	int cnt = 0;
	double get = 0;
	char *s= (char*)(&get);
	for(; cnt < WORDS_NUM; ++ cnt){
		fin.seekg(8*cnt*KEYWORDS_NUM, ios::beg);
		fin.read(s, 8);
		fout << get << endl;
	}
	fin.close();
	fout.close();
	return 0;
}