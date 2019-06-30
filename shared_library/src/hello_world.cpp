#include<iostream>
#include<stdio.h>

extern "C" {
   void helloWorld() {
      std::cout<<"Hello World !"<<std::endl;
   }
}
