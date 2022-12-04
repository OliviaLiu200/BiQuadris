CXX = g++
CXXFLAGS = -std=c++14 -Wall -MMD
OBJECTS = board.o block.o level.o levelZero.o levelOne.o LevelTwo.o LevelThree.o LevelFour.o text.o unit.o subject.o main.o
EXEC = biquadris
DEPENDS = ${OBJECTS.o=.d}

-include ${DEPENDS}

${EXEC}: ${OBJECTS}
	${CXX} ${CXXFLAGS} ${OBJECTS} -o ${EXEC}

.PHONY: clean

clean: rm ${OBJECTS} ${EXEC} ${DEPENDS}
