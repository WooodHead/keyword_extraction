#include <iostream>
#include <fstream>
#include "Word.h"
#define MAX_WORDS 133000
using namespace std;
ifstream fin;
ofstream fout;
int word_num = 0;
Word get_word[MAX_WORDS];
bool flag[MAX_WORDS];
void quick_sort(int left_bound, int right_bound){
	int left = left_bound, 
		right = right_bound;
	Word tem = get_word[right];
	while(left < right){
		for(; left < right && get_word[left].smaller_equal(tem); ++ left);
		get_word[right] = get_word[left];
		for(; right > left && get_word[right].larger_equal(tem); -- right);
		get_word[left] = get_word[right];
	}
	get_word[left] = tem;
	if(left_bound < left - 1)
		quick_sort(left_bound, left - 1);
	if(right + 1 < right_bound)
		quick_sort(right + 1, right_bound);
}
int main(){
	fin.open("valid_word.txt");
	if(!fin.good()){
		cout << "open valid_word.txt error!\n";
		exit(1);
	}
	fout.open("clearly_arranged_word.txt");
	if(!fout.good()){
		cout << "open clearly_arranged_word.txt error!\n";
		exit(2);
	}
	int cnt_word = 0;
	while(fin >> get_word[cnt_word].str){
		fin >> get_word[cnt_word].weight >> get_word[cnt_word].offset;
		++ cnt_word;
	}
	quick_sort(0, cnt_word - 1);


	//去重并写入
	for(int cnt = cnt_word - 1; cnt >= 1; -- cnt){
		if(get_word[cnt] == (get_word[cnt - 1])){
			get_word[cnt - 1].weight += get_word[cnt].weight;
			flag[cnt] = 1;
		}
	}
	fout << get_word[0].str;
		 //<< ' ' << get_word[0].weight 
		 //<< ' ' << get_word[0].offset;
 	for(int cnt_i = 1; cnt_i < cnt_word; ++ cnt_i){
		if(!flag[cnt_i]){
			fout << ' ';
			fout << get_word[cnt_i].str;
			//<< ' ' << get_word[cnt_i].weight 
			//<< ' ' << get_word[cnt_i].offset;
		}
		//else fout << ' ' << get_word[cnt_i].offset;
	}
	//fout << endl;
	fin.close();
	fout.close();
	return 0;
}