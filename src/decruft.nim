import os
import strutils

var crufts = newSeq[string](0)

for line in lines paramStr(1):
  if line != "":
    crufts.add(line)

echo "Loaded ", len(crufts), " cruft lines..."

var filtered_lines = newSeq[string](0)
var original_line_count = 0

for line in lines paramStr(2):
  original_line_count = original_line_count + 1
  var keep = true

  for cruft in crufts:
    if keep and (cruft in line):
      keep = false

  if keep:
    filtered_lines.add(line)

var out_file_name = paramStr(2) & ".clean"
if paramCount() == 4:
  out_file_name = paramStr(3)

let out_file = open(out_file_name, fmWrite)
for out_line in filtered_lines:
  out_file.writeLine(out_line)
out_file.close()

echo "Generated: ", out_file_name
echo "Original Lines : ", original_line_count
echo "Filtered Lines : ", original_line_count - len(filtered_lines)
echo "Remaining Lines: ", len(filtered_lines)