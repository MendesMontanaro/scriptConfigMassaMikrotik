import paramiko
from paramiko import SSHClient
import subprocess
import time
import re
import json
import sys
import datetime
from ftplib import FTP
import uuid
import signal
import requests

iplist = []
hostnamelist = []
devicelist = []
timelist = []
login = 'user'
passwd = 'pass'
errobackup = "none"

class TimeoutException(Exception):
    pass

def timeout_handler(signum, frame):
    raise TimeoutException

signal.signal(signal.SIGALRM, timeout_handler)

def colect_list():

    with open("data/ips.txt", "r") as ip_temp:
        for row03 in ip_temp:
            iplist.append(row03.replace("\n", ""))

colect_list()

iplength = len(iplist)

def backup_mass():
    for line in range(0, iplength):
        signal.alarm(60)
        try:
            ssh: SSHClient = paramiko.SSHClient()
            ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
            tempip = iplist[line]
            accessport = 2225
            x_count = 0
            comment = "PROCESSO DE REALIZAÇÃO DO BACKUP: DO HOST DE IP: "+iplist[line]
            print(comment)
            ssh.connect(iplist[line], username=login, password=passwd, port=accessport, look_for_keys=False, allow_agent=False)
            stdin, stdout, stderr = ssh.exec_command("user add name=user password=pass group=full")
            time.sleep(2)
            print("Aguardando...")
            resultadoCriarUsuario = stdout.read()
            pass
            print("Salvando...")
            finaltemp = time.strftime("%H:%M:%S")
            print("Backup FINALIZADO: "+finaltemp)

        except Exception as e:
            errobackup.write("Erro no backup de ip - " +tempip+":" +str(e)+"\n")
            errobackup.close()
            signal.alarm(0)
            continue

        except ValueError as e2:
            errobackup.write("Erro no backup de ip: " +tempip+": "+str(e2)+ "\n")
            errobackup.close()
            signal.alarm(0)
            continue

        except paramiko.ssh_exception.AuthenticationException as mikoerr2:
            errobackup.write("Erro no backup de ip: "+tempip+": " +str(mikoerr2)+"\n")
            errobackup.close()
            signal.alarm(0)
            continue

        except TimeoutException:
            errobackup.write("Erro no backup de ip: " +tempip+ ":Tempo de execução expirado.\n")
            errobackup.close()
            signal.alarm(0)
            continue

        finally:
            ssh.close()
            signal.alarm(0)

backup_mass()
