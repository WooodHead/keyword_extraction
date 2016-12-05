#include <iostream>
#include <fstream>
#include <ctime>
#include <algorithm>
#define SENT_NUM 4001
#define MAKE_NUM 1000
#define MAX_WORDS 5000
using namespace std;
bool used[SENT_NUM];
int index[MAKE_NUM + 1];
char get_sent[MAX_WORDS];
int main(){
	ifstream fin;
	ifstream fget;
	ofstream fout;
	ofstream fput;
	fin.open("full_test.data");
	if(!fin.good()){
		cout << "open full_test.data error!\n";
		exit(1);
	}
	fout.open("test.data");
	if(!fout.good()){
		cout << "open test.data error!\n";
		exit(2);
	}
	fget.open("full_std_result.data");
	if(!fget.good()){
		cout << "open full_std_result.data error!\n";
		exit(3);
	}
	fput.open("std_result.data");
	if(!fput.good()){
		cout << "open std_result.data error!\n";
		exit(4);
	}
	srand(time(NULL));
	int cnt = 0;
	while(cnt < MAKE_NUM){
		int tem_index = rand()%SENT_NUM;
		if(tem_index == 0)
			continue;
		if(!used[tem_index]){
			used[tem_index] = 1;
			index[cnt++] = tem_index;
		}
	}
	sort(index, index + MAKE_NUM);
	int last = 1;
	for(cnt = 0; cnt < MAKE_NUM; ++ cnt){
		for(int cnt_i = last; cnt_i <= index[cnt]; ++ cnt_i){
			fin.getline(get_sent, MAX_WORDS);
		}
		fout << get_sent << endl;
		for(int cnt_i = last; cnt_i <= index[cnt]; ++ cnt_i){
			fget.getline(get_sent, MAX_WORDS);
		}
		fput << get_sent << endl;
		last = index[cnt] + 1;
	}
	fin.close();
	fout.close();
	fget.close();
	fput.close();
	return 0;
}