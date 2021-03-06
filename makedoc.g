#
# UnitalSZ: Algorithms and library of unitals of projective planes
#
# This file is a script which compiles the package manual.
#
if fail = LoadPackage( "AutoDoc", "2016.02.16" ) then
    Error( "AutoDoc version 2016.02.16 or newer is required." );
fi;

AutoDoc( rec( scaffold := rec( bib := "UnitalSZ_bib.xml" ), autodoc := true ) );
#AutoDoc( rec( autodoc := true ) );

Exec( "cd doc && ./clean");

QUIT;
