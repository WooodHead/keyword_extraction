#include "Word.h"
#include <iostream>
#include <cstring>
//extern struct Word;
Word::Word(const char *in_str, double in_wei, int in_off){
	memset(str, 0, sizeof(str));
	int cnt_i = 0;
	while(in_str && in_str[cnt_i]){
		str[cnt_i] = in_str[cnt_i];
		++ cnt_i;
	}
	weight = in_wei;
	offset = in_off;
}
bool Word::operator < (const Word &in_word){
	int cnt_i = 0;
	while(str[cnt_i] && in_word.str[cnt_i]){
		if(str[cnt_i] < in_word.str[cnt_i])
			return true;
		else if(str[cnt_i] > in_word.str[cnt_i])
			return false;
		++ cnt_i;
	}
	if(!str[cnt_i]){
		if(in_word.str[cnt_i])
			return true;
		else return false;
	}
	return false;
}
bool Word::operator > (const Word &in_word){
	int cnt_i = 0;
	while(str[cnt_i] && in_word.str[cnt_i]){
		if(str[cnt_i] > in_word.str[cnt_i])
			return true;
		else if(str[cnt_i] < in_word.str[cnt_i])
			return false;
		++ cnt_i;
	}
	if(!str[cnt_i])
		return false;
	return true;
}
bool Word::operator == (const Word &in_word){
	int cnt_i = 0;
	while(str[cnt_i] && in_word.str[cnt_i]){
		if(str[cnt_i] != in_word.str[cnt_i])
			return false;
		++ cnt_i;
	}
	if(str[cnt_i] != in_word.str[cnt_i])
		return false;
	return true;
}
bool Word::operator != (const Word &in_word){
	return !((*this) == in_word);
}
bool Word::operator <= (const Word &in_word){
	int cnt_i = 0;
	while(str[cnt_i] && in_word.str[cnt_i]){
		if(str[cnt_i] < in_word.str[cnt_i])
			return true;
		else if(str[cnt_i] > in_word.str[cnt_i])
			return false;
		++ cnt_i;
	}
	if(str[cnt_i])
		return false;
	return true;
}
bool Word::operator >= (const Word &in_word){
	int cnt_i = 0;
	while(str[cnt_i] && in_word.str[cnt_i]){
		if(str[cnt_i] > in_word.str[cnt_i])
			return true;
		else if(str[cnt_i] < in_word.str[cnt_i])
			return false;
		++ cnt_i;
	}
	if(str[cnt_i])
		return true;
	else if(!in_word.str[cnt_i])
		return false;
	return true;
}

bool Word::larger_than(const Word &in_word){
	if((*this) > in_word ||
	  ((*this) == in_word) && offset > in_word.offset)
		return true;
	return false;
}
bool Word::smaller_than(const Word &in_word){
	if((*this) < in_word ||
	  ((*this) == in_word) && offset < in_word.offset)
		return true;
	return false;
}
bool Word::equal(const Word &in_word){
	if((*this) == in_word &&
		offset == in_word.offset)
		return true;
	return false;
}
bool Word::not_equal(const Word &in_word){
	return !this->equal(in_word);
}
bool Word::larger_equal(const Word &in_word){
	if((*this) > in_word ||
	  ((*this) == in_word) && offset >= in_word.offset)
		return true;
	return false;
}
bool Word::smaller_equal(const Word &in_word){
	if((*this) < in_word ||
	  ((*this) == in_word) && offset <= in_word.offset)
		return true;
	return false;
}
