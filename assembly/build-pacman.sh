#!/bin/bash
set -Cue

thisDir="$(cd "$(dirname "$0")" && pwd)"
rootDir="$(cd "${thisDir}/../../.." && pwd)"
binDir="${rootDir}/git/2023-2024-project-2-x86-retrogaming-team-8/assembly/bin"

echo "$binDir"

cd "${thisDir}" \
    && nasm pacman.asm -f bin -o "${binDir}/pacman.com"