//
//  main.cpp
//  关键词提取（S&P）
//
//  Created by 刘辉 on 2016/12/3.
//  Copyright © 2016年 刘辉. All rights reserved.
//

#include <iostream>
#include <fstream>
#include <map>
#include <cstring>
#include <string>
#define MAX_LENGTH 30
#define SENTENCE_NUM 4000
using namespace std;

struct key{
    int count;//关键词一共出现了多少次
    int sentence_id[500];//每一次出现在第几个句子
    key(){
        count=0;
    }
};

int key_num=0;//一共有多少个关键词

int main(int argc, const char * argv[]) {
    ifstream in(argv[1]);
    ofstream out(argv[2]);
    map<string,key> key_map;//根据单词字典序排序，同时记录相关信息
    char special[40]="Semantic Web (RDF, OWL, etc.)";//这是一个特殊的关键词，只在“ etc.)”出现时才往map里添加
    for(int i=1;i<=SENTENCE_NUM;++i){
        int cnt=0;
        while(cnt<2){//定位到关键词位置
            if((in.get())=='$'&&(in.get())=='#')cnt++;
        }
        char sen[500];
        in.getline(sen,499);
        char * tmp1=sen;//tmp1指向关键词首，tmp2指向关键词尾
        char * tmp2=strchr(sen, ',');
        while(tmp2!=NULL){
            *tmp2='\0';
            if(strcmp("Semantic Web (RDF",tmp1)!=0&&strcmp(" OWL",tmp1)!=0){
                if(strcmp(" etc.)",tmp1)==0)tmp1=special;
                if(key_map.empty()||key_map.find(tmp1)==key_map.end()){//map为空或者找不到该字符串，加入
                    key tmp;
                    tmp.count=1;
                    tmp.sentence_id[0]=i;
                    key_map.insert(make_pair(tmp1, tmp));
                }
                else{//找到，将关键词次数加一
                    map<string,key>::iterator it=key_map.find(tmp1);
                    (it->second).sentence_id[(it->second).count++]=i;
                }
            }
            tmp1=tmp2+1;
            tmp2=strchr(tmp1, ',');
        }
    }
    
    key_num=(int)key_map.size();
    out<<"This is the collection of key words, the total num is "<<key_num<<endl<<endl;
    map<string ,key>::iterator it;
    int i=1;
    key tmp;
    for(it=key_map.begin();it!=key_map.end();it++,i++){
        tmp=it->second;
        out<<"id: "<<i<<endl;
        out<<"content: "<<it->first<<endl;
        out<<"count: "<<tmp.count<<endl;
        out<<"the related sentence:";
        for(int j=0;j<tmp.count;++j)out<<tmp.sentence_id[j]<<" ";
        out<<endl<<endl;
    }
    return 0;
}
