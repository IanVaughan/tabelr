require './lib/tabelr'

data = {
  "data" =>
  [
    {
      "column1" => "This",
      "column2" => "is",
      "column3" => "quite",
      "column4" => "cool!"
    },
    {
      "column1" => "This",
      "column2" => "is the longest field",
      "column3" => "by far",
      "column4" => 1241
    },
    {
      "column1" => "Short",
      "column2" => "fields",
      "column3" => "fit",
      "column4" => "in"
    },
    {
      "column1" => "other",
      "column2" => "eg",
      "column3" => nil,
      "column4" => 3322119999999999
    }
  ]
}

res = Tabelr::convert data
puts res.class, res
