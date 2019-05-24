#!/bin/bash

echo "----------------------------------"
echo "   Doors CS Assembler/Compiler"
echo "          Version 2.0L"
echo "     Written by Kerm Martian"
echo "     http://www.Cemetech.net"
echo "----------------------------------"
echo "----- Assembling $1 for the TI-83/84 Plus..."

mono tasm/Brass.exe source/to_compress.z80 source/data.bin source/data_labels.inc
lz4 -9 --no-frame-crc source/data.bin
mono tasm/Brass.exe source/U2048.z80 exec/U2048.8xp -l list/U2048.list.html
rm source/data.bin
rm source/data.bin.lz4
rm source/data_labels.inc
