#!/usr/bin/perl

$latex = 'uplatex -synctex=1 -halt-on-error -file-line-error';
$bibtex = 'pbibtex';
$dvipdf = 'dvipdfmx %O -o %D %S';

$pdf_mode = 3;
$pvc_view_file_via_temporary = 0;
