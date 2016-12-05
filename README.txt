文件说明:
.txt:
clearly_arranged_keywords.txt: 简明关键词表
invalid_words.txt: 冗余单词表
weighed_words.txt: 单词和权重表 #修改权重则修改本文件中每个单词后的数字 double型
.data:
full_test.data: 全部的测试输入(原始的train.data去除每个句子后的关键词部分 用于生成测试输入的文件)
full_std_result.data: 全部的测试标准输出(原始的train.data提取出句子后的关键词部分 用于生成测试输入的标准输出 用于比对)
test.data: 由程序make_test_io_file.exe随机生成的若干测试句子(数目可在源代码make_test_io_file.cpp中更改 默认1000)
std_result.data: 由程序make_test_io_file.exe随机生成的若干测试句子的标准答案(数目可在源代码make_test_io_file.cpp中更改 默认1000)
result.data: 主程序main.exe运行处理后给出的输出
words_rate.data: 所有的单词关键词频率表 用于main.exe程序读取加权求和
.h:
Word.h: Word结构体的头文件 包含于main.cpp中
.cpp:
Word.cpp: Word结构体的实现
main.cpp: 读取test.data中的输入 给出result.data输出 #代码包含Word.h头文件 需要和Word.cpp分别编译得到Word.o和main.o后 共同链接生成
具体方式:
>gcc -S Word.cpp
>gcc -c Word.s
>gcc -S main.cpp
>gcc -c main.s
>g++ -o main main.o Word.o
.o:
Word.o: 编译汇编Word.cpp得到
main.o: 编译汇编main.cpp得到
共同链接:
>g++ -o main main.o Word.o
.exe:
main.exe: main可执行文件 #注:main程序执行过程除了产生result.data还会有一些辅助调试文件
make_test_io_file: 随机产生测试输入输出的可执行文件
