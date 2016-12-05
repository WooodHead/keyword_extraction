#include <iostream>
#include <fstream>
#include <cstring>
#include <set>
#include <algorithm>
#include "Word.h"
#define MAX_WORDS 22000
#define MAX_KEYWORDS 360
using namespace std;
struct Keywords_rate{
	int index;
	double rate;
	bool operator < (const Keywords_rate &in_key){
		return rate < in_key.rate;
	}
	bool operator > (const Keywords_rate &in_key){
		return rate > in_key.rate;
	}
	bool operator == (const Keywords_rate &in_key){
		return rate == in_key.rate;
	}
	bool operator >= (const Keywords_rate &in_key){
		return rate >= in_key.rate;
	}
	bool operator <= (const Keywords_rate &in_key){
		return rate <= in_key.rate;
	}
};
string words[MAX_WORDS];
double words_weight[MAX_WORDS];
string keywords[MAX_KEYWORDS];
Keywords_rate keywords_rate[MAX_KEYWORDS];
set<string> invalid_dict;
int words_num = 0,
	keywords_num = 0;
void get_words(){
	ifstream fin;
	fin.open("weighed_words.txt");
	if(!fin.good()){
		cout << "open weighed_words.txt error!\n";
		exit(1);
	}
	int cnt_i = 0;
	while(fin >> words[cnt_i]){
		fin >> words_weight[cnt_i++];
	}
	words_num = cnt_i;
	fin.close();
}
void get_keywords(){
	ifstream fin;
	fin.open("clearly_arranged_keywords.txt");
	if(!fin.good()){
		cout << "open clearly_arranged_keywords.txt error!\n";
		exit(1);
	}
	int cnt_i = 0;
	//cout << "before" << endl;
	char get_str[100];
	while(fin.getline(get_str, 100)){
		keywords[cnt_i++] = get_str;
		//cout << keywords[cnt_i - 1] << endl;
	}
	keywords_num = cnt_i;
	fin.close();
	//cout << "keywords_num :" << keywords_num << endl;
}
int binary_search(string &in_word){
	int left = 0, right = words_num - 1;
	while(left < right){
		int mid = (left + right)/2;
		if(in_word == words[mid])
			return mid;
		else if(in_word < words[mid]){
			right = mid - 1;
			continue;
		}
		else{
			left = mid + 1;
			continue;
		}
	}
	return -1;
}
void extract_words(){
	ifstream fin;
	ofstream fout;
	fin.open("test.data");
	if(!fin.good()){
		cout << "open test.data error~\n";
		exit(1);
	}
	fout.open("output_words.txt");
	if(!fout.good()){
		cout << "open output.txt error!\n";
		exit(2);
	}
	int get_index = 0;
	char get_str[200];
	Word HTTP("http\0");
	Word HTTP2("HTTP\0");
	Word HTTP3("Http\0");
	Word HTTPS("https\0");
	Word HTTPS2("HTTPS\0");
	Word WWW("www\0");
	Word WWW2("WWW\0");
	while(fin >> get_index){//读入每个句子开头的标号
		//剔除分隔符"#$#"
		fin.get();
		fin.get();
		fin.get();
		//flag用来标识本次读入了本句子的末尾
		//即本次读入字符串中含有分隔符"#$#"
		//分割符之后的部分为关键词 直接略过
		while(fin >> get_str){//未读到句子末尾
			int length = strlen(get_str);
			int cnt_j,cnt_k;
			for(int cnt_i = 0; cnt_i < length; cnt_i = cnt_k + 1){
				//找到第一个是字母的位置:过滤可能的前缀非字母字符
				for(cnt_j = cnt_i; cnt_j < length && 
					(get_str[cnt_j] < 'A' || (get_str[cnt_j] > 'Z' && get_str[cnt_j] < 'a') ||
					get_str[cnt_j] > 'z'); ++ cnt_j);
				//找到之后的第一个非字母字符位置
				//即找到连续的字母段 认为这是一个单词
				for(cnt_k = cnt_j; cnt_k < length && ((get_str[cnt_k] >= 'A' && get_str[cnt_k] <= 'Z') ||
					(get_str[cnt_k] >= 'a' && get_str[cnt_k] <= 'z')); ++ cnt_k);
				//便于处理将这个非字母字符设置为'\0'
				get_str[cnt_k] = '\0';
				if(cnt_k > cnt_j){
					//初始化到结构体中
					Word get_word(get_str + cnt_j, 1.0, get_index);
					//处理掉网址
					if( get_word == HTTP || 
						get_word == HTTP2 ||
						get_word == HTTP3 ||
						get_word == HTTPS ||
						get_word == HTTPS2 ||
						get_word == WWW ||
						get_word == WWW2 )
						break;
					//输出到文件中
					fout << get_word.str << " " 
					<< get_word.offset << endl;
					//system("pause");
				}
			}
			if(fin.peek() == '\n')
				break;
		}
	}
	//关闭文件
	fin.close();
	fout.close();
}
void discard_invalid_words(){
	ifstream fin;
	ofstream fout;
	fin.open("invalid_words.txt");
	if(!fin.good()){
		cout << "open invalid_words error!\0";
		exit(3);
	}
	string get_string;
	char get_char[100];
	while(fin >> get_string){
		//cout << get_string;
		//system("pause");
		invalid_dict.insert(get_string);
	}
	fin.close();

	fin.open("output_words.txt");
	if(!fin.good()){
		cout << "open output_words.txt error!\n";
		exit(4);
	}
	fout.open("output_valid_word.txt");
	if(!fout.good()){
		cout << "open output_valid_word.txt error!\n";
		exit(5);
	}
	Word get_word;
	while(fin >> get_word.str){
		fin >> get_word.offset;
		get_string = get_word.str;
		if(strlen(get_word.str) > 2 && invalid_dict.find(get_string) == invalid_dict.end()){
			fout << get_word.str 
			<< " " << get_word.offset << endl;
		}
	}
	fin.close();
	fout.close();
}
void compute_keywords(){
	ifstream fin;
	ifstream fget;
	ofstream fout;
	fin.open("output_valid_word.txt");
	if(!fin.good()){
		cout << "open output_valid_word.txt error!\n";
		exit(1);
	}
	fget.open("words_rate.data", ios::binary);
	if(!fget.good()){
		cout << "open words_rate.data error!\n";
		exit(1);
	}
	fout.open("result.data");
	if(!fout.good()){
		cout << "open result.data error!\n";
		exit(1);
	}
	ofstream fput;
	fput.open("existing_words.txt");
	if(!fput.good()){
		cout << "open existing_words.txt error!\n";
		exit(1);
	}
	ofstream fpput;
	fpput.open("dbg_keywords_rate.txt");
	if(!fpput.good()){
		cout << "open dbg_keywords_rate.txt error!\n";
		exit(1);
	}
	ofstream fppput;
	fppput.open("dbg_words_rate.txt");
	if(!fppput.good()){
		cout << "open dbg_words_rate.txt error!\n";
		exit(1);
	}
	
	int index = 0;
	string get_word;
	int get_index;
	while(fin >> get_word >> get_index){
		if(index == 0)
			index = get_index;
		if(get_index == index){
			int order = binary_search(get_word);
			if(order != -1){
				//fput << get_word << " " << get_index << " "<< order << endl;
				double cur_wei = words_weight[order];
				fget.clear();
				fget.seekg(8*order*keywords_num, ios::beg);
				double cur_rate = 1;
				int cnt = 0;
				fppput << get_word;
				while(cnt ++ < keywords_num){
					fget.read((char*)(&cur_rate), 8);
					fppput << " " << cur_rate;
					keywords_rate[cnt - 1].index = cnt - 1;
					keywords_rate[cnt - 1].rate += cur_wei*cur_rate;
				}
				fppput << endl;
			}
		}
		else{
			sort(keywords_rate, &keywords_rate[keywords_num]);
			for(int cnt_i = 0; cnt_i < keywords_num; ++ cnt_i)
				fpput << keywords[keywords_rate[cnt_i].index] << " " 
					  << keywords_rate[cnt_i].index << " "
					  << keywords_rate[cnt_i].rate << endl;
			fout << index << "#$#" 
			<< keywords[keywords_rate[keywords_num - 1].index] << ','
			<< keywords[keywords_rate[keywords_num - 2].index] << ',' 
			<< keywords[keywords_rate[keywords_num - 3].index] << ',' << endl;
			index = get_index;
			memset(keywords_rate, 0, sizeof(keywords_rate));
			int order = binary_search(get_word);
			if(order != -1){
				double cur_wei = words_weight[order];
				fget.clear();
				fget.seekg(8*order*keywords_num, ios::beg);
				double cur_rate = 1;
				int cnt = 0;
				fppput << get_word;
				while(cnt ++ < keywords_num){
					fget.read((char*)(&cur_rate), 8);
					fppput << " " << cur_rate;
					keywords_rate[cnt - 1].index = cnt - 1;
					keywords_rate[cnt - 1].rate += cur_wei*cur_rate;
				}
				fppput << endl;
			}
		}
	}
	sort(keywords_rate, &keywords_rate[keywords_num]);
	for(int cnt_i = 0; cnt_i < keywords_num; ++ cnt_i)
		fpput << keywords[keywords_rate[cnt_i].index] << " " 
			  << keywords_rate[cnt_i].index << " "
			  << keywords_rate[cnt_i].rate << endl;
	fout << index << "#$#" 
	<< keywords[keywords_rate[keywords_num - 1].index] << ','
	<< keywords[keywords_rate[keywords_num - 2].index] << ',' 
	<< keywords[keywords_rate[keywords_num - 3].index] << ',' << endl;
	fin.close();
	fout.close();
	fget.close();
	fput.close();
	fpput.close();
	fppput.close();
}
int main(){
	get_words();
	get_keywords();

	extract_words();
	discard_invalid_words();
	compute_keywords();
	return 0;
}