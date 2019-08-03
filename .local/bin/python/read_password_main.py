from subprocess import check_output
import os
import argparse


def get_pswd(path):
    return check_output(['gpg', '--quiet', '--batch', '-d', os.path.expanduser(path)]).strip()


if (__name__ == '__main__'):
    ap = argparse.ArgumentParser()
    ap.add_argument("-f", "--file-path", required=True,
                    help="full file path to encrypted file")
    args = vars(ap.parse_args())
    pswd_file = args["file_path"]
    print(str(get_pswd(pswd_file), "utf-8"))
