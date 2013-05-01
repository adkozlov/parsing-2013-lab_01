$empty = '^\s*$';
$tag = '<[^>]*>';

$x = '';
while ($x = <>) {
    s/$tag//g for $x;
    last if (eof | $x !~ /$empty/);
}

if (!eof) {
    while ($y = <>) {
        s/$tag//g for $y;
        s/\s{2,}/ /g, s/^\s?//, s/\s?$/\n/ for $x;

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
