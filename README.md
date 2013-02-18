maint-music
===========

NAME

    maint-music -- maintain the music filesystem

SYNOPSIS

    maint-music [-dDnrS] [-K type] [ *directory* | *textfile* ]

DESCRIPTION

    The maint-music programm scans a text file for files, or recursively
    scans a directory, looking for MP3 or M4A files. If finds duplicate file
    names, with different suffixes (for encodings, e.g., "foo.mp3" and
    "foo.m4a"), and removes the ".m4a" types, retaining the ".mp3".

    Maint-music also renames any files for which the artist name is
    suffixed. For example, the path:

       C<./Madonna/The Best Of Madonna/01 - Vogue - Madonna.mp3>

    would get renamed with the redundant " - Madonna" removed.

OPTIONS

    -c        Clean up filenames and directory names. Specifically, remove
              leading and trailing "_" and "-" characters, which seem to
              show up a lot in iTunes repos.

    -d        Find duplicate music files. Use -D to delete them.

    -D        Delete duplicate music files (by name). By default, keep the
              "mp3" files. This can be changed with the -K option. Use -d to
              find and report duplicate music files, but not delete them.

    -h        Show this help.

    -K *type* Keep music files of *type*, where *type* can be one of "mp3",
              "m4a", or "wma".

    -n        Show the commands, but don't actually do them.

    -r        Recurse within the named directory. Without this option, only
              the top level files are scanned; subdirectories are ignored.

    -S        Ignore the size when deciding whether or not to keep a
              duplicate file. Normally, duplicates are removed only if their
              size matches exactly.

AUTHOR

    Alan K. Stebbens <aks@stebbens.org>

