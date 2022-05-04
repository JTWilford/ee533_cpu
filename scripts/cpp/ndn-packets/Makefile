ndn-packet-test: ndn-sock.o ndn-packet-test.o
	g++ -o ndn-packet-test ndn-packet-test.o ndn-sock.o

ndn-packet-test.o:
	g++ ndn-packet-test.cpp -o ndn-packet-test.o -c

ndn-sock.o:
	g++ ndn-sock.cpp -o ndn-sock.o -c

.PHONY: clean temp

temp: ndn-packet-test
	cp ndn-packet-test /tmp/ndn-packet-test
	chmod 777 /tmp/ndn-packet-test
clean:
	-rm *.o $(objects) ndn-packet-test