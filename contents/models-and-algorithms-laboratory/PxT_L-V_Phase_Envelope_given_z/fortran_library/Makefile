options = -Wall -ffree-line-length-0 -cpp -ggdb -fmax-errors=1 -fcheck=all -Og -fPIC

compiler = gfortran
linker = gfortran

OBJECTS = \
obj/PhaseEnvelope.o \
obj/EOS.o \
obj/GaussElimination.o \
obj/cubic_solver.o \

.DEFAULT_GOAL := build_library

build_library:	
	$(compiler) $(options) -c src/GaussElimination.f90 -Jobj -o obj/GaussElimination.o #compilar
	$(compiler) $(options) -c src/cubic_solver.f90 -Jobj -o obj/cubic_solver.o #compilar
	$(compiler) $(options) -c src/EOS.f90 -Jobj -o obj/EOS.o #compilar
	$(compiler) $(options) -c src/PhaseEnvelope.f90 -Jobj -o obj/PhaseEnvelope.o #compilar
	$(linker) -shared -fPIC -o bin/Trace_The_Envelope.so $(OBJECTS) #link library
		

clean:
	rm -f obj/*.o bin/*.so obj/*.mod