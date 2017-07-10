# Gerov's Perl Cheat Sheet

## Scalars

    my $string = "This is a string.";
    my $integer = 1;
    my $float = 3.14;

### Single vs Double Quotes

    print "This string\tis \'interpolated\'\n";
    print 'This string\tis not \'interpolated\' except for \\ and \\\'\n', "\n";

### Alternative Delimiters

    print qq/'"Hi," said Jack. "Have you read Slashdot today?"'\n/;
    print qq/'"Hi," said Jack. "Have you read \/. today?"'\n/;
    print qq|'"Hi," said Jack. "Have you read /. today?"'\n|;
    print qq#'"Hi," said Jack. "Have you read /. today?"'\n#;
    print qq('"Hi," said Jack. "Have you read /. today?"'\n);
    print qq<'"Hi," said Jack. "Have you read /. today?"'\n>;

### Here-Documents

EOF can be replaced for whatever

    print<<`EOF;

    This is a here-document. It starts on the line after the two arrows,
    and it ends when the text following the arrows is found at the beginning
    of a line, like this:
    
    EOF

### Standard Input (stdin)

    $line = <STDIN>;
    print $line;

## Lists and Hashes

    print ('one', 2, 'THREE')[0]

### qw// - quote word
Similar to a split function - returns a list context

    my @array = qw(foo bar       baz);

    my $month = qw(
        January    February    March
        April      May         June
        July       August      September
        October    November    December
    )[5 - 1];
    print "$month is the 5th month.\n";


### Accessing Multiple Elements

    my @months = (qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)[3, 5, 7, 9]);`

#### Array Slices

    my @months = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
    my @selection = @months[3, 5, 7, 9];


