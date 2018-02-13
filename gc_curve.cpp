/* This program is to calculate the GC content curve for a certain window size.
 * Usage: ./gc_curve *.fa(*.fasta)  [window_size(integer)] [out.name]
 * Created at: January 29, 2018
 * Author: Jingyu LI
 */

#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>
#include <sstream>
using namespace std;

class element{
	public:
		double at;
		double gc;
};



int main(int argc, char* argv[]){
	ifstream fin;
	ofstream fout;
	string str;
	stringstream ss;
	int window;
	element ee[100000];
	fin.open(argv[1]);
	if(!fin.is_open()){
		cout<<"open file failed."<<endl;
		return -1;
	}
	fout.open(argv[3]);
	getline(fin,str);//this line is the strain name
	int index = 0; //index is for all lines
	int att,gcc;//buffer for counting each line
	while(!fin.eof()){
		getline(fin,str);
		
		att = 0; 
		gcc = 0;
		for(int i = 0; i < str.length();i++){
			if(str[i]=='A'||str[i]=='T'||str[i]=='a'|| str[i]=='t') att++;
			else if(str[i]=='C'||str[i]=='G'||str[i]=='g'|| str[i]=='c') gcc++;
		}
		//cout<<gcc<<"\t";
		//cout<<att<<endl;
		if(att+gcc!=0){
			ee[index].at=att/(double)(att+gcc);
			ee[index].gc=gcc/(double)(att+gcc);
		}
		index++;
	}
	ss << argv[2]; // pass the window size from the command
	ss >> window;
	window = window/80;
	ss.clear();
	double plot_gc[index];
	
	for (int i=0; i<index-window; i=i+20){
		plot_gc[i] = 0;
		for(int j=i;j<i+window;j++){
			plot_gc[i]+=ee[j].gc;
		}
		plot_gc[i]= plot_gc[i]/window;//average
		fout<<i<<"\t"<<i*0.8*100<<"\t"<<plot_gc[i]<<"\n";
	}
	fin.close();
	fout.close();
	return 0;
}
