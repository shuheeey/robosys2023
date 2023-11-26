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
2のべき乗:32" ] || ng ${LINENO}

out=$(echo あ | ./plus)
[ "${out}" = "seq: 引数の浮動小数が無効です: `あ'
詳しくは 'seq --help' を実行して下さい。
合計値:0
乗算値:1
平均値:0
逆数和:0
2のべき乗:1" ]   || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
