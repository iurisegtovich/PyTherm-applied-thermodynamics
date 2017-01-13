options = -Wall -ffree-line-length-0 -cpp -ggdb -fmax-errors=1 -fcheck=all -Og -fPIC
compiler = gfortran
linker = gfortran
OBJECTS = obj/algorithm.o obj/thermo.o obj/phase-diagram.o
build_library:
	$(compiler) $(options) -c src/thermo.f90 -Jobj -o obj/thermo.o
	$(compiler) $(options) -c src/algorithm.f90 -Jobj -o obj/algorithm.o
	$(compiler) $(options) -c src/phase-diagram.f90 -Jobj -o obj/phase-diagram.o
	$(linker) -shared -fPIC -o bin/phase-diagram.so $(OBJECTS)
