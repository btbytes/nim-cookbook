---
title: Documenting Nim Code
---

## How do I auto generate documentation for Nim ( similar to Javadocs, Pydoc?)

Nim compiler has builtin doucmentation generation tools called - `doc` and `doc2`. They produce similar outputs, but `doc2` does macro processing in addition to what `doc` does.

Nim uses **reStructuredText** (ie., `.rst`) format for inline documentation.

If you have a file called `example.nim`, you can generate documentation by:

```
nim doc example
```

The resulting HTML file will be `docgen_example.html`.

See [Nim's docgen page](https://nim-lang.org/docs/docgen.html) for more information.