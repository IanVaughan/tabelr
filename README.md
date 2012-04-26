Tabler
======

Creates neat aligned ascii tables from a json input

This is mainly useful on SQU query output from Sequel Pro app, which can save results as json.

I'm sure there are a 100+ versions of this around, but I wrote this mainly for the challenge.


Usage
-----

  ruby bin/tabelr test/example.json test/output.txt


input
-----

- The input must be a json formatted file

- Which contains a hash
  - with one key named `data`
  - and one value containing an array of hashes

- Each hash must contain the same number of same named keys, which this will use as the column headers

E.g. (extract from `test/example.json`)

    {
      "data":
      [
        {
          "column1": "This",
          "column2": "is",
          "column3": "quite",
          "column4": "cool!"
        },
        {
          "column1": "This",
          "column2": "is the longest field",
          "column3": "by far",
          "column4": 1241
        },

output
------

The output filename can be omitted, it will then default to the STDOUT terminal

Given the file input above, the output will look like :-

    +---------+----------------------+---------+------------------+
    | column1 | column2              | column3 | column4          |
    +---------+----------------------+---------+------------------+
    | This    | is                   | quite   | cool!            |
    | This    | is the longest field | by far  | 1241             |
    | Short   | fields               | fit     | in               |
    | other   | eg                   |         | 3322119999999999 |
    +---------+----------------------+---------+------------------+


