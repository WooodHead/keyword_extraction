#include <iostream>
#include <fstream>
#include <cstdio>
#define KEY_NUM 349
#define WORDS_NUM 21788
using namespace std;
int main(){
	ifstream fget;
	ofstream fout;
	fget.open("words_rate.data", ios::binary);
	if(!fget.good()){
		cout << "open words_rate.txt error!\n";
		exit(1);
	}
	fout.open("words_rate2.txt");
	if(!fout.good()){
		cout << "open words_rate.data error!\n";
		exit(2);
	}
	double get = 0;
	char *s = (char*)(&get);
	int cnt = 0;
	for(; cnt < 10; ++ cnt){
		fget.seekg(cnt*8*KEY_NUM, ios::beg);
		for(int cnt_i = 0; cnt_i < KEY_NUM; ++ cnt_i){
			fget.read(s, 8);
			fout << get << endl;
		}
	}
	fget.close();
	fout.close();
	return 0;
}