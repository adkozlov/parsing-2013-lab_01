$_ = join("", <>);

while (m/<a[^>]*\shref\s*=\s*"([^">]*)"/g) {
    push @urls, $1;
}

foreach (@urls) {
    m/(^[^:\/\?\#]*\:\/\/)?([^@]*@)?([^\/\#\?]*)/;
    $_ = $3;
    s/:\d+$//;
}

%seen = ();
@urls = grep {!$seen{$_}++ && $_ !~ /^(..)?$/} @urls;
@urls = sort @urls;

foreach (@urls) {
    print "$_\n";
}
