#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Shuhei Yanagihori
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = "合計値:15
乗算値:120
平均値:3.0
逆数和:137/60
2のべき乗:32" ]    || ng ${LINENO}

out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng $LINENO
[ "${out}" = "" ] || ng $LINENO

out=$(echo | ./plus)
[ "$?" = 1 ]      || ng $LINENO
[ "${out}" = "" ] || ng $LINENO

[ "$res" = 0 ] && echo OK
exit $res
