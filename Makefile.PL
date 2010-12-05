use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
(
	($] ge '5.005') ?
	(
		AUTHOR   => 'Ron Savage (ron@savage.net.au)',
		ABSTRACT => 'English names of nationalities',
    ) : (),
	clean =>
	{
		FILES => 'blib/* Makefile MANIFEST Locale-Nationality-en-*'
	},
	dist =>
	{
		COMPRESS => 'gzip',
		SUFFIX   => 'gz'
	},
	DISTNAME  => 'Locale-Nationality-en',
	NAME      => 'Locale::Nationality::en',
	PL_FILES  => {},
	PREREQ_PM =>
	{
		Test::More => 0.96,
		Test::Pod  => 1.44,
	},
	VERSION_FROM => 'lib/Locale/Nationality/en.pm',
);