#include <iostream>
#include <fstream>
#define KEYWORDS_NUM 349
#define WORDS_NUM 21788
using namespace std;
int main(){
	ifstream fin;
	ofstream fout;
	fin.open("words_rate.txt");
	if(!fin.good()){
		cout << "open words_rate.txt error!\n";
		exit(1);
	}
	fout.open("words_rate.data", ios::binary);
	if(!fout.good()){
		cout << "open words_rate.data error!\n";
		exit(2);
	}
	double get;
	while(fin >> get){
		fout.write((char*)(&get), 8);
	}
	fin.close();
	fout.close();
	return 0;
}