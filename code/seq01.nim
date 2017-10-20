# var seq1 = @[]  would produce an error `cannot infer the type of the sequence`

var seq2: seq[int] = @[]
var seq3 = newSeq[string]()