# Package

version       = "0.1.0"
author        = "Supranim"
description   = "A Microservice app template built with Supranim"
license       = "MIT"
srcDir        = "src"
bin           = @["microservice"]
binDir        = "bin"

# after build:
#     exec "clear"

task dev, "Development build":
    exec "nimble build --threads:on --gc:arc"

task prod, "Production build":
    exec "nimble build --gc:arc --threads:on -d:release --hints:off --opt:speed --spellSuggest:0"

task up, "Start Application":
    exec "./bin/" & bin[0]

# Dependencies
requires "nim >= 1.4.8"
requires "pkginfo"
requires "supranim >= 0.1.0"
requires "limiter"
requires "emitter"