# Decruft

> A simple tool for removing noisy lines from text files.

## Building

	nimble build -d:release

## Usage

	decruft <cruft_file> <text_file> [<clean_file>]

The `cruft_file` is a text file with each line containing a string of text such that if it is found on a line of the text file, that line will be
removed from the resulting file.

The `text_file` is the text file being cleaned.

The `clean_file` is the resulting clean text file. If this is omitted, the test_file name will be used with ".clean" appended to it.
