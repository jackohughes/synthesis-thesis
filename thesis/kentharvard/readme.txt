Compilation
-----------

How to compile:

latex kentHarvard.dbj

producess:
  kentHarvard.log - Log file of compilation process
  kentHarvard.bst - Compile biblatex style file.

Corrections
-----------

A list of corrections that need to be made to the .bst file after compilation:

- In the function format.title (approx line 590) remove the emphasize and    
  surrounding if:

    duplicate$ empty$ 'skip$
    {
      emphasize
    }
    if$

  Reason: This incorrectly emphasises all titles.

- In the function inproceedings (approx line 1200) reomve the line:

      format.bvolume output

  Reason: Incorrectly duplicates the volume for inproceedings entries.
  
To do and known bugs
--------------------

- Support for URL is bibliography