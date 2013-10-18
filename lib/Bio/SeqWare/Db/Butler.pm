package Bio::SeqWare::Db::Butler;


use 5.014;         # Eval $@ safe to use.
use strict;        # Don't allow unsafe perl constructs.
use warnings;      # Enable all optional warnings.

use Carp;          # Base the locations of reported errors on caller's code.
# $Carp::Verbose = 1;
use Data::Dumper;  # Quick data structure printing

=head1 NAME

Bio::SeqWare::Db::Butler - Maintain a SeqWare db and associated data.

=cut

=head1 VERSION

Version 0.000.001

=cut

our $VERSION = '0.000001';

=head1 SYNOPSIS

  use Bio::SeqWare:Db::Butler;
  my $igor = Bio::SeqWare:Db::Butler->new( $paramHR );

  # Create a spreadsheet-like html page for a table (or a view!).
  $igor->generateTableView( $dbTableName, $relativeOutPath );

  # Remove database entries, linked entires, and associated files;
  $igor->deleteByAccession( $dbTableName, $accessionAR, $deleteFilesToo );

  # Move referenced files to a new location (db and files system)
  $igor->moveFiles( $sourceRoot, $targetRoot, $fileIdAR );

=cut

=head1 DESCRIPTION

Manages the seqware database and associated file-system data, providing
for maintainacne tasks, repairs, and data lifecycle. Dangerous this can
be; delete all your data you can. 

=cut


=head1 CLASS METHODS

=cut

=head2 new()

  my $igor = Bio::SeqWare:Db::Butler->new( $paramHR );

Creates and returns a Bio::SeqWare::Db::Butler object. Takes
a hash-ref of parameters, each of which is made avaialble to the object.
Don't use parameters beging with a _ (underscore). These may be overwritten.
The parameter 'error' is cleared automatically, 'myName' is set to
"db_butler_$VERSION" where version is the version of this module,
like "0.001007".

=cut


=head1 INSTANCE METHODS

=cut


=head1 AUTHOR

Stuart R. Jefferys, C<< <srjefferys (at) gmail (dot) com> >>

Contributors:
  Brian O'Conner

=cut

=head1 DEVELOPMENT

This module is developed and hosted on GitHub, at
L<p5-Bio-SeqWare-Config https://github.com/theobio/p5-Bio-SeqWare-Db-Butler>.
It is not currently on CPAN, and I don't have any immediate plans to post it
there unless requested by core SeqWare developers (It is not my place to
set out a module name hierarchy for the project as a whole :)

=cut

=head1 INSTALLATION

You can install a version of this module directly from github using

   $ cpanm git://github.com/theobio/p5-Bio-SeqWare-Db-Butler.git@v0.000.001
 or
   $ cpanm https://github.com/theobio/p5-Bio-SeqWare-Db-Butler.git@v0.000.001.tar.gz

Any version can be specified by modifying the tag name, following the @;
the above installs the latest I<released> version. If you leave off the @version
part of the link, you can install the bleading edge pre-release, if you don't
care about bugs...

You can select and download any package for any released version of this module
directly from L<https://github.com/theobio/p5-Bio-SeqWare-Db-Butler/releases>.
Installing is then a matter of unzipping it, changing into the unzipped
directory, and then executing the normal (C>Module::Build>) incantation:

     perl Build.PL
     ./Build
     ./Build test
     ./Build install

=cut

=head1 BUGS AND SUPPORT

No known bugs are present in this release. Unknown bugs are a virtual
certainty. Please report bugs (and feature requests) though the
Github issue tracker associated with the development repository, at:

L<https://github.com/theobio/p5-Bio-SeqWare-Db-Butler/issues>

Note: you must have a GitHub account to submit issues.

=cut

=head1 ACKNOWLEDGEMENTS

This module was developed for use with L<SegWare | http://seqware.github.io>.

=cut

=head1 LICENSE AND COPYRIGHT

Copyright 2013 Stuart R. Jefferys.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

=cut

1; # End of Bio::SeqWare::Db::Butler
