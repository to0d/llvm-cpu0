# Autogenerated from /Users/cschen/llvm/test/llvm/test/Unit/lit.site.cfg.py.in
# Do not edit!

import os

llvm_project_dir = os.environ["PHOENIX_LLVM_DIR"]
print('llvm_project_dir: ', llvm_project_dir)
install_dir = os.environ["LLVM_INSTALLED_DIR"]

# Allow generated file to be relocatable.
from pathlib import Path
def path(p):
    if not p: return ''
    return str((Path(__file__).parent / p).resolve())


import sys

config.llvm_src_root = path(llvm_project_dir)+path(r"/llvm")
config.llvm_obj_root = path(install_dir)
config.llvm_tools_dir = path(install_dir)+path(r"/./bin")
config.llvm_build_mode = "."
config.enable_shared = 1
config.shlibdir = path(install_dir)+path(r"/./lib")

# Support substitution of the tools_dir and build_mode with user parameters.
# This is used when we can't determine the tool dir at configuration time.
try:
    config.llvm_tools_dir = config.llvm_tools_dir % lit_config.params
    config.llvm_build_mode = config.llvm_build_mode % lit_config.params
    config.shlibdir = config.shlibdir % lit_config.params
except KeyError:
    e = sys.exc_info()[1]
    key, = e.args
    lit_config.fatal("unable to find %r parameter, use '--param=%s=VALUE'" % (key,key))

# Let the main config do the real work.
lit_config.load_config(
    config, os.path.join(config.llvm_src_root, "test/Unit/lit.cfg.py"))