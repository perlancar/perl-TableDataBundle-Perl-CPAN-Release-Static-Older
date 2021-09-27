package ## no critic: Modules::RequireFilenameMatchesPackage
    # hide from PAUSE
    TableDataRole::CPAN::Release::Static::1996;

use 5.010001;
use strict;
use warnings;

use Role::Tiny;
with 'TableDataRole::Source::CSVInFile';

around new => sub {
    my $orig = shift;

    require File::Basename;
    my $filename = File::Basename::dirname(__FILE__) . '/../../../../../share/1996.csv';
    unless (-f $filename) {
        require File::ShareDir;
        $filename = File::ShareDir::dist_file('TableDataBundle-CPAN-Release-Static-Older', '1996.csv');
    }
    $orig->(@_, filename=>$filename);
};

package TableData::CPAN::Release::Static::1996;

use 5.010001;
use strict;
use warnings;

use Role::Tiny::With;

# AUTHORITY
# DATE
# DIST
# VERSION

with 'TableDataRole::CPAN::Release::Static::1996';

# STATS

1;
# ABSTRACT: CPAN releases for the year 1996

=head1 TABLEDATA NOTES

The data is retrieved from MetaCPAN.

The C<status> column is the status of the release when the row is retrieved from
MetaCPAN. It is probably not current, so do not use it.
