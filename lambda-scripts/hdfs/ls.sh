#!/bin/bash
hadoop fs -ls $1 | sed '1d;s/  */ /g' | cut -d\  -f8
