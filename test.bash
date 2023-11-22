#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Shuhei Yanagihori
# SPDX-License-Identifier: BSD-3-Clause


out=$(seq 3 | ./plus)

[ "${out}" = 6 ]


