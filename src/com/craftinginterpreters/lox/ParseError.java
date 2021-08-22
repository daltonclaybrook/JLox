package com.craftinginterpreters.lox;

public class ParseError {
    final int line;
    final String where;
    final String message;

    ParseError(int line, String where, String message) {
        this.line = line;
        this.where = where;
        this.message = message;
    }

    String fullMessage() {
        return "[line " + line + "] Error" + where + ": " + message;
    }
}
