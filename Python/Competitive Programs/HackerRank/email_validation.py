import email.utils
import re

if __name__ == "__main__":
    n = int(input())
    for i in range(0, n):
        name, mail = email.utils.parseaddr(input())
        if mail.count('@') != 1:
            continue
        user, host = mail.split('@')
        if host.count('.') != 1:
            continue
        dom, ext = host.split('.')
        if re.match('^[a-zA-Z]*[a-zA-Z0-9._-]', user) is not None and user[0].isalpha() and dom.isalpha() and \
                ext.isalpha() and len(ext) in range(1, 4):
            print(email.utils.formataddr((name, mail)))
