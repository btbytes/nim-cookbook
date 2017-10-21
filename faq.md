---
title: Frequently Asked Questions
---

## Why no Syntax Highlighting for the code snippets?

Because --

![](https://i.imgur.com/cdbDzKg.jpg)

The real reason is, [Pandoc](http://pandoc.org) the document converter used to convert Markdown to HTML uses [highlighting-kate](https://github.com/jgm/highlighting-kate) syntax highlighter, which does not have Nim support yet. Creating one is simple -- fork the repo, add a new XML file with Nim specific tags and send a pull-request. We need *someone*, (I don't know who...) to do this ;).
