import sequtils

let
  seq1 = @[10, 20, 30]
  seq2 = @[111, 222, 333]

echo concat(seq1, seq2)
