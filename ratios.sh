#!/bin/bash

echo "FILE, COMPRESSED, UNCOMPRESSED, CLASS"

for f in creative/*
do
    UNCOMPRESSED_V=`cat $f | wc -c`
    COMPRESSED_V=`xz -c $f | wc -c`
    echo $f, $COMPRESSED_V,$UNCOMPRESSED_V, "CREATIVE"
done

for f in boring/*
do
    UNCOMPRESSED_V=`cat $f | wc -c`
    COMPRESSED_V=`xz -c $f | wc -c`
    echo $f, $COMPRESSED_V,$UNCOMPRESSED_V, "NOT_CREATIVE"
done
