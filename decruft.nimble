# Package

version       = "0.1.0"
author        = "Chris Stehno"
description   = "Tool to remove noise lines from log files."
license       = "MIT"
srcDir        = "src"
bin           = @["decruft"]



# Dependencies

requires "nim >= 1.2.6"
requires "docopt >= 0.6.7"
