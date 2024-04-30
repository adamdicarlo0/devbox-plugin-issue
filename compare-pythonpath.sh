#!/usr/bin/env bash

devbox run -c non-plugin-example -- 'echo $PYTHONPATH | sed -E "s/:/\n/g" >../pythonpath.no-plugin.txt'

devbox run -- 'echo $PYTHONPATH | sed -E "s/:/\n/g" >./pythonpath.with-plugin.txt'

diff -u pythonpath.no-plugin.txt pythonpath.with-plugin.txt
