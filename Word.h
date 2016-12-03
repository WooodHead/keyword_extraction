#ifndef NO_WORD
#define NO_WORD
#include <iostream>
#define MAX_LENGTH 200

//存储每个单词的结构体
struct Word{
	char str[MAX_LENGTH];//存储单词本身
	double weight;//单词的权值 
	int offset;	//需要在另一个文件生成一张表，
				//记录每一个关键词出现时每个单词出现的频率/频数
				//这个变量就指向对应本单词的表项的偏移
				//便于组织 单词的表项按行组织 关键词的表项按列组织
				//初始设置为对应的句子标号
	Word(const char *in_str = NULL, double in_wei = 1.0, int in_off = 0);
	//以下比较均是单纯的str字符串比较
	bool operator < (const Word &);
	bool operator > (const Word &);
	bool operator == (const Word &);
	bool operator != (const Word &);
	bool operator <= (const Word &);
	bool operator >= (const Word &);
	//以下比较 先比较字符串 相同时再比较offset即所在句子标号
	bool larger_than(const Word &);
	bool smaller_than(const Word &);
	bool equal(const Word &);
	bool not_equal(const Word &);
	bool larger_equal(const Word &);
	bool smaller_equal(const Word &);
};
#endif