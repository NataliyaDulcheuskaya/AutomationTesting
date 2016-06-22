import os
import string
from robot.libraries.BuiltIn import BuiltIn


def set_random_string(size=8):
    chars = string.letters
    chars_len = len(chars)
    rndmString = str().join(chars[int(ord(c) / 256. * chars_len)] for c in os.urandom(size))
    BuiltIn().set_suite_variable('${rndmString}', rndmString)
    return rndmString
