#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Shuhei Yanagihori
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      res=1
}

res=0

out=$(seq 5 | ./plus)

#IFS=$'\n' read -r -a lines <<< "$out"

#[ "${lines[0]}" = 3 ] || ng ${LINENO}

[ "${out}" = "合計値:15
乗算値:120
平均値:3.0
逆数和:137/60
べき乗:32" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res


