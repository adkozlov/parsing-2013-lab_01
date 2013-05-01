while (<>) {
    print if /\b(1(01*0)*1|0)+\b/;
}
