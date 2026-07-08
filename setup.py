from setuptools import setup, Extension
from Cython.Build import cythonize

# Compile from the .c file directly to keep source hidden
setup(
    ext_modules = [Extension("mane_wifidog", ["mane_wifidog.c"])]
)
