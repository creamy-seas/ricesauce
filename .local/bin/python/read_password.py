#!/usr/bin/python
from subprocess import check_output
import os
import time
import re


# def get_password_emacs(machine, login, port):
#     s = "machine %s login %s port %s password (.*)\n" % (
#         machine, login, port)
#     p = re.compile(s)
#     authinfo = os.popen(
#         "gpg -q --no-batch --yes -d ~/mail/.pswd_mail.gpg").read()
#     time.sleep(2)
#     # authinfo = os.popen("gpg -q --no-tty -d ~/.authinfo.gpg").read()
#     return p.search(authinfo).group(1)

def get_password_emacs(machine, login, port):
    s = "machine %s login %s port %s password ([^ ]*)\n" % (
        machine, login, port)
    p = re.compile(s)

    print("==> Prompting for password")
    # kill pinentry programs which tend to stall on the mac
    os.system("killall pinentry 2> /dev/null")
    authinfo = os.popen(
        "gpg -q --no-tty -d ~/mail/.pswd_mail.gpg").read()
    print("==> Returning password")

    return p.search(authinfo).group(1)


def get_pswd(path):
    authinfo = os.popen("gpg --quiet --no-tty -d %s" %
                        (os.path.expanduser(path))).read()
    return authinfo
    # return check_output(['gpg', '--quiet', '--batch', '-d', os.path.expanduser(path)]).strip()
