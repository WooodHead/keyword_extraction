#include <iostream>
#include <fstream>
#include <set>
#include <string>
#include <cstring>
#include <stdlib.h>
#include "Word.h"
using namespace std;
set<string> invalid_dict;
int main(){
	ifstream fin;
	ofstream fout;
	fin.open("invalid_words.txt");
	if(!fin.good()){
		cout << "open invalid_words error!\0";
		exit(1);
	}
	string get_string;
	char get_char[100];
	while(fin >> get_string){
		//cout << get_string;
		//system("pause");
		invalid_dict.insert(get_string);
	}
	fin.close();

	fin.open("words.txt");
	if(!fin.good()){
		cout << "open words.txt error!\n";
		exit(2);
	}
	fout.open("valid_word.txt");
	if(!fout.good()){
		cout << "open valid_word.txt error!\n";
		exit(3);
	}
	Word get_word;
	while(fin >> get_word.str){
		fin >> get_word.weight >> get_word.offset;
		get_string = get_word.str;
		if(strlen(get_word.str) > 2 && invalid_dict.find(get_string) == invalid_dict.end()){
			fout << get_word.str 
			<< " " << get_word.weight 
			<< " " << get_word.offset << endl;
		}

	}
	fin.close();
	fout.close();
	return 0;
}