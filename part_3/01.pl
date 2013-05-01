$empty = '^\s*$';

$x = '';
while ($x = <>) {
    last if (eof | $x !~ /$empty/);
}

if (!eof) {
    while ($y = <>) {
        $x =~ s/\s{2,}/ /g;
        $x =~ s/^\s?//;
        $x =~ s/\s?$/\n/;

        if ($x !~ /$empty/) {
            print $x;
        } else {
            if ($y !~ /$empty/) {
                print "\n";
            }
        }

        $x = $y;
    }
}

if ($x !~ /$empty/) {
    print $x;
}
