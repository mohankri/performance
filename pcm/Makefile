INTEL_DIR=../../IntelPerformanceCounterMonitor-V2.11
CPPFLAGS=-g -std=c++11 -I$(INTEL_DIR) 
LDFLAGS=-L $(INTEL_DIR)/cpucounters.o $(INTEL_DIR)/pci.o $(INTEL_DIR)/msr.o $(INTEL_DIR)/client_bw.o $(INTEL_DIR)/cpucounters.o -lpthread
LDLIBS=

pcm: pcm.o
	g++ $(LDFLAGS) -o pcm pcm.o $(LDLIBS)

clean:
	rm *.o pcm
