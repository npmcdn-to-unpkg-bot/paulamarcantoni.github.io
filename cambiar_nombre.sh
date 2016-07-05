#!/bin/bash
i=0;

for f in $(ls)
  let i++
  $(mv "${f}" "imagen_${i}.jpg")
done

exit 0
