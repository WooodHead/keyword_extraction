#include <iostream>
#include <fstream>
#include <cstring>
#include <stdlib.h>
#include "Word.h"
using namespace std;
int main(){
	ifstream fin;
	ofstream fout;
	fin.open("train.data");
	if(!fin.good()){
		cout << "open train.data error!\n";
		exit(1);
	}
	fout.open("words.txt");
	if(!fout.good()){
		cout << "open words.txt error!\n";
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
		bool flag = 1;
		while(flag && fin >> get_str){//未读到句子末尾
			int length = strlen(get_str);
			for(int cnt_i = 0; cnt_i < length; ++ cnt_i){
				//先在读到的字符串中找 判断是否含有分隔符"#$#"
				if(get_str[cnt_i] == '$' && get_str[cnt_i - 1] == '#'
						&& get_str[cnt_i + 1] == '#'){
					//若含有分割符  有效长度设置为到分隔符为止
					length = cnt_i;
					//循环将分隔符后剩余的关键词略过
					while(fin.get() != '\n');
					//设标记为0
					flag = 0;
					break;
				}
			}
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
					<< get_word.weight << " "
					<< get_word.offset << endl;
					//system("pause");
				}
			}
		}
	}
	//关闭文件
	fin.close();
	fout.close();
	return 0;
}