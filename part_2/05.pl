while (<>) {
    s/\b(\w)(\w)(\w*)/\2\1\3/g;
    print;
}
