# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# This Source Code Form is "Incompatible With Secondary Licenses", as
# defined by the Mozilla Public License, v. 2.0.

package Bugzilla::Extension::SecureMail::Command::securemail_remove_bad_keys; ## no critic (Capitalization)
use 5.10.1;
use Mojo::Base 'Mojolicious::Command';

use Bugzilla::Constants;
use Bugzilla::User;
use Bugzilla::Extension::SecureMail::TCT;

has description => 'Find and remove invalid GPG keys';
has usage => sub { shift->extract_usage };

sub run {
  my ($self, @args) = @_;
  Bugzilla->usage_mode(USAGE_MODE_CMDLINE);
  my $dbh = Bugzilla->dbh;

}

1;
__END__
=encoding utf8

=head1 NAME

Bugzilla::Extension::SecureMail::Command::securemail_remove_bad_keys - Find and remove invalid GPG keys

=head1 SYNOPSIS

  Usage: APPLICATION securemail_remove_bad_keys [OPTIONS]

    ./bugzilla.pl securemail_remove_bad_keys

  Options:
    none

=head1 DESCRIPTION

L<Bugzilla::Extension::SecureMail::Command::securemail_remove_bad_keys> removes invalid GPG keys.

=head1 ATTRIBUTES

L<Bugzilla::Extension::SecureMail::Command::securemail_remove_bad_keys> inherits all attributes from
L<Mojolicious::Command> and implements the following new ones.

=head2 description

  my $description   = $securemail_remove_bad_keys->description;
  $securemail_remove_bad_keys  = $securemail_remove_bad_keys->description('Foo');

Short description of this command, used for the command list.

=head2 usage

  my $usage = $securemail_remove_bad_keys->usage;
  $securemail_remove_bad_keys  = $securemail_remove_bad_keys->usage('Foo');

Usage information for this command, used for the help screen.

=head1 METHODS

L<Bugzilla::App::Command::securemail_remove_bad_keys> inherits all methods from
L<Mojolicious::Command> and implements the following new ones.

=head2 run

  $securemail_remove_bad_keys->run(@ARGV);

Run this command.

=cut
