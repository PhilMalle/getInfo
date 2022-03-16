#!/bin/python3

import argparse


DESCRIPTION = """
This scirpt is used for Information gethering from varius sites. 
Follwoing sites are used:
    1. Whois.com
    2. ipinfo.ip
    3. Shodan
These programs must be installed on the cliet so it can run. 
"""

parser = argparse.ArgumentParser(description=DESCRIPTION, formatter_class=argparse.RawTextHelpFormatter)

parser.add_argument('-I', '--ipaddress',
                    dest='ip',
                    help='Provide IP-Address to get info.'
                    )
parser.add_argument('-F', '--folder',
                    dest='folder',
                    help='Provide destination Folder.'
                    )
args = parser.parse_args()
print(f'The IP is {args.ip} and foldername is {args.folder}')


