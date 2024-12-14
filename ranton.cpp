#include <algorithm>
#include <iostream>
#include <random>

int main(int argc, char* argv[]){
	std::vector<char*> entries;

	int i = 0;

	if(argc > 1){
		for(i = 1; i < argc; i++){
			entries.push_back(argv[i]);
		}

		std::shuffle(entries.begin(), entries.end(), std::default_random_engine{std::random_device{}()});
		i = 0;

		for(char* entry : entries){
			std::cout << ++i << " " << entry << std::endl;
		}
	}else{
		std::cout << "Usage: " << argv[0] << " item1 item2 item3 ..." << std::endl;
	}
}
