use strict;
use warnings;

use Email::MIME;
my $message = Email::MIME -> create(
    header_str => [
    From => 'friend@example',
    To => 'you@example.com',
    Subject => 'Happy Birthday'
    ],
    attributes => {
        encoding => 'quoted-printable',
        charset => 'ISO-8859-1'
    },
    body_stry => "Happy birthday to you!\n"
);

# Send a message 
use Email::Sender::Simple qw(sendmail);
sendmail($message);