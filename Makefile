default: staging

staging: hello

hello: hello.cpp
	c++ hello.cpp -o hello -Lcppcms/lib -Icppcms/include -lcppcms -lbooster -lz

clean:
	rm -f hello
	rm -rf cppcms

run:
	./hello -c cppcms.js

dev: devlibs hello

devlibs:
	mkdir -p cppcms
	tar -m --directory cppcms -zxf $(HOME)/code/cf/Buildpacks/cppcms-buildpack/vendor/cflinuxfs2/cppcms-1.0.5-linux-x64.tgz
