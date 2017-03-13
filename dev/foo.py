#!/usr/bin/env python3

inf = open('kks.wordlist')
outf = open('kks.dix', 'w')
for l in inf:
    parts = l.strip().split()
    if len(parts) == 2:
        if '(' in parts[0]:
                parts[0] = parts[0].replace('(', '').replace(')', '')
        print('  <e><p><r>', parts[0], '</r><l>', parts[0],
              '</l><par n="', parts[1], ' "/></p></e>', sep='', file=outf)

