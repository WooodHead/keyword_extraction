#include <iostream>
#include <fstream>
using namespace std;
char sentence[5000];
int main(){
	ifstream fin;
	ofstream fout;
	ofstream fput;
	fin.open("train.data");
	if(!fin.good()){
		cout << "open train.data error!\n";
		exit(1);
	}
	fout.open("full_test.data");
	if(!fout.good()){
		cout << "open full_test.data error!\n";
		exit(2);
	}
	fput.open("std_result.data");
	if(!fput.good()){
		cout << "open std_result.data error!\n";
		exit(3);
	}
	int get_index;
	char info[100];
	char get_str[100];
	while(fin >> get_index){//读入每个句子开头的标号
		//剔除分隔符"#$#"
		fin.get();
		fin.get();
		fin.get();
		fout << get_index << "#$#";
		fput << get_index << "#$#";
		while(fin.getline(sentence, 5000, '#')){
			fout << sentence;
			if(fin.peek() == '$'){
				fin.get();
				fin.get();
				fin.getline(sentence, 5000);
				fput << sentence << endl;
				fout << endl;
				break;
			}			
		}
	}
	//关闭文件
	fin.close();
	fout.close();
	fput.close();
	return 0;
}