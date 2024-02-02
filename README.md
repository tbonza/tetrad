# Tetrad

Process knowledge graph.

## Usage

```
$ echo "hello\nworld\nagain\n" > hmm.txt
$ cat hmm.txt| xargs ./_build/default/bin/tetrad.exe # single process
$ cat hmm.txt| xargs -P 4 ./_build/default/bin/tetrad.exe # four processes
```
