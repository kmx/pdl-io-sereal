use strict;
use warnings;

use Test::More;
use PDL;
use PDL::IO::Sereal ':all';

unlink "tmp.sereal";

my $pdl1 = long(random(12,34,56,78) * 1000000);
$pdl1->wsereal("tmp.sereal");
my $pdl2 = rsereal("tmp.sereal");

ok(all($pdl1 == $pdl2));
is($pdl1->info, $pdl2->info);

unlink "tmp.sereal";

done_testing;