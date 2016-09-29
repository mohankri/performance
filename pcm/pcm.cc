#include <iostream>

#include "cpucounters.h"
using namespace std;

int
main()
{
	PCM *m = PCM::getInstance();
	PCM::ErrorCode ret = m->program();

	if (ret != PCM::Success) {
		cerr << "Failed to Start PCM" << endl;
		exit(1);
	}

	SystemCounterState s1 = getSystemCounterState();
	for (int i = 0; i < 100; i++) {
		cout << "Hello World " << "\n";
	}	
	SystemCounterState s2 = getSystemCounterState();

	cout << "IPC: " << getIPC(s1, s2)  << endl;
	cout << "Read: " << getBytesReadFromMC(s1, s2);

}

