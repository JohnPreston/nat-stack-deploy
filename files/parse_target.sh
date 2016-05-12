#!/usr/bin/env bash
grep [a-bA-B0-9:] $1 | cut -d ':' -f $2

