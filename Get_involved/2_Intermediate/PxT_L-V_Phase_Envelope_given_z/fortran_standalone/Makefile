options = -Wall -ffree-line-length-0 -cpp -ggdb -fmax-errors=1 -fcheck=all -Og

compiler = gfortran
linker = gfortran

OBJECTS = \
obj/PhaseEnvelope.o \
obj/EOS.o \
obj/GaussElimination.o \
obj/cubic_solver.o \

.DEFAULT_GOAL := build_standalone

build_standalone:	
	$(compiler) $(options) -c src/GaussElimination.f90 -Jobj -o obj/GaussElimination.o #compilar
	$(compiler) $(options) -c src/cubic_solver.f90 -Jobj -o obj/cubic_solver.o #compilar
	$(compiler) $(options) -c src/EOS.f90 -Jobj -o obj/EOS.o #compilar
	$(compiler) $(options) -c src/PhaseEnvelope.f90 -Jobj -o obj/PhaseEnvelope.o #compilar
	$(linker) $(options) $(OBJECTS) -o bin/Trace_The_Envelope.elf #linkar
		

clean:
	rm -f obj/*.o bin/*.elf obj/*.mod