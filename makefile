all: hello

hello: hello.o
	gcc -o $@ $<
# $@ pointe le fichier executable; $< pointe la première dépendance
hello.o: hello.c
	gcc -c $< 
#$< compile hello.c premiere dépendance de hello.o
     
clean:
	rm hello.o hello

#------------------------------------------------------------------------------------------------------------
#all: hello
#
#hello: hello.o
#	 gcc -o hello hello.o
#
#hello.o: hello.c
#	 gcc -c hello.c
#     
#clean:
#	 rm hello.o hello
#----------------------------------------------------------------------------------------------------------
#
#all est la target, hello est le prérequis, en dessous se place la ligne de commande
#hello appelle hello, qui appelle hello.o qui check hello.c et fait sa commande
#puis les appels remontent pour l'exécutable
#clean ne possède pas de prérequis, elle execute simplement le rm
#
#target1 [target2 ...]: [pre-req-1 pre-req-2 ...]
#	[command1
#	 command2
#	 ......]
#----------------------------------------------------------------------------------------------------------
#A variable begins with a $ and is enclosed within parentheses (...) or braces {...}. Single character #variables do not need the parentheses. For example, $(CC), $(CC_FLAGS), $@, $^.
#
#Automatic Variables
#Automatic variables are set by make after a rule is matched. There include:
#
#$@: the target filename.
#$*: the target filename without the file extension.
#$<: the first prerequisite filename.
#$^: the filenames of all the prerequisites, separated by spaces, discard duplicates.
#$+: similar to $^, but includes duplicates.
#$?: the names of all prerequisites that are newer than the target, separated by spaces.
#----------------------------------------------------------------------------------------------------------
# Search for .c files in "src" directory; .h files in "include" directory
# The pattern matching character '%' matches filename without the extension
#vpath %.c src
#vpath %.h include
#-------------------------------------------------------------------------------------------------------------
