#!/bin/bash

http -p b get "https://www.mankier.com/api/v2/explain/" cols==70 q=="$*"
