while (<>) {
    s/\([^\)]*\)/\(\)/g;
    print;
}
