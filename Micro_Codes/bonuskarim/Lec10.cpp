#include "stdafx.h"
#include<iostream>
using namespace std;

int main()
{

	int16_t data1, data2, sum;
	data1 = 12;
	data2 = 24;

	_asm {
		mov ax, data1
			mov bx, data2
			add ax, bx		//Add the numbers
			mov sum, ax
	}
	cout << data1 << "+" << data2 << "=" << sum << "\n";
	system("Pause");
	int Edata1, Edata2, Esum;
	Edata1 = 15;
	Edata2 = 25;
	//32 bits programming
	//.386 Is used
	//EAX,EBX,ECX,EDX
	//All of them could be used as pointers
	//mov AX,[ECX]
	//little endian 
	//3 Extra segments ES,FS and GS
	//
	_asm {
			mov eax, Edata1
			mov ebx, Edata2
			add eax, ebx
			mov Esum, eax
	}
	cout << Edata1 << "+" << Edata2 << "=" << Esum << "\n";
	system("Pause");
	
	return 0;
}

