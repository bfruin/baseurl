#! /usr/bin/perl
use LWP::UserAgent;
use strict;

# Get URL from standard input
print "Enter URL: http://";
my $url = <>;

# Remove single and double quotes
$url =~ s/'//g;
$url =~ s/"//g;

# Ensure protocol is entered (assumes HTTP)
if (index(lc($url), "http://", 0) != 0) {
	$url = "http://".$url;	
}

# Check that page is valid
my $resp = LWP::UserAgent->new->get($url);
if ( $resp->is_success) {
 	# Get base page if valid
 	print "Base URL: ".$resp->base."\n";
} else {
  print "Invalid URL\n";
}
