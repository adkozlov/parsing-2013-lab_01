while (<>) {
    print if /[xyz]\w{5,17}[xyz]/;
}
