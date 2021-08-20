# Inspired by https://github.com/munificent/craftinginterpreters

BUILD_DIR := build

.PHONY: default jlox

default: jlox

# Compile and run the AST generator.
generate_ast:
	@ $(MAKE) -f util/java.make DIR=src PACKAGE=tool
	@ java -cp build/src com.craftinginterpreters.tool.GenerateAst \
			src/com/craftinginterpreters/lox

# Compile the Java interpreter .java files to .class files.
jlox: generate_ast
	@ $(MAKE) -f util/java.make DIR=src PACKAGE=lox
