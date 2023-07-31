#!/bin/bash

scp src/cat/s21_cat almetate@10.10.0.2:/usr/local/bin/
scp src/grep/s21_grep almetate@10.10.0.2:/usr/local/bin/

# покажем наличие исполняемых фалов на второй машине
ssh almetate@10.10.0.2 ls -lah /usr/local/bin