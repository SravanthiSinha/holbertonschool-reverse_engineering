#!/bin/bash
e=$(printf "\x41\x42\x43\x04")
echo $e
./crackme3 $e
