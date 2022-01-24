import paramiko
from paramiko import SSHClient, SSHConfig, SSHException
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

ipdevice = input("Digite o ip da RB: ")
hostname = input("Digite o Hostname da RB: ")
device = input("Digite o device da RB: ")
accessportSSH = input("Digite a porta de acesso SSH da RB: ")
login = 'user'
passwd = 'pass'
accessportFTP = 21

def single_backup():

    try:
        #mass = "MASS_BACKUP"
        ssh = paramiko.SSHClient()
        ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        #filetemp = time.strftime("%Y-%m-%d -- %H:%M:%S")
        #datatime = time.strftime("%Y-%m-%d")
        #initime = time.strftime("%H:%M:%S")
        accessport = 22
        x_count = 0
        #comment = "PROCESSO DE REALIZAÇÃO DO BACKUP: "+filetemp+" DO HOST: "+hostname+" DE IP: "+ipdevice
        #print(comment)
        #backupname = "BACKUP__"+hostname+"__"+ipdevice+"__"+device+"__"+filetemp
        ssh.connect(hostname=(ipdevice), username=login, password=passwd, port=int(accessportSSH), look_for_keys=False, allow_agent=False)
        stdin, stdout, stderr = ssh.exec_command("display vlan 850")

        print("Aguardando...")
        backupresult = stdout.read()
        # print(backupresult)
        print("Salvando...")
        arqbackup = open("source_backups/"+backupname+".rsc", "wb")
        arqbackup.write(backupresult)
        arqbackup.close()
        # if isfile("source_backups/"+backupname+".rsc"):
        #     finaltemp = time.strftime("%H:%M:%S")
        #     print("Backup FINALIZADO: "+finaltemp)
        # else:
        #     print("ERRO NO BACKUP: ")

    except Exception as e:
        errobackup = open("error_backups/errobackup"+datatime+".txt", "a+")
        errobackup.write("Erro no backup:"+hostname+" de ip:"+(ipdevice)+" .Result: " +str(e)+ "\n")
        errobackup.close()
        # print(e)
        raise

    except ValueError as e2:
        errobackup = open("error_backups/errobackup"+datatime+".txt", "a+")
        errobackup.write("Erro no backup: " + hostname + " de ip:" + ipdevice + "; " + str(e2) + "\n")
        errobackup.close()
        raise

    except paramiko.ssh_exception.AuthenticationException as mikoerr2:
        errobackup = open("error_backups/errobackup" + datatime + ".txt", "a+")
        errobackup.write("Erro no backup: " + hostname + " de ip:" + ipdevice + "; " + str(mikoerr2) + "\n")
        errobackup.close()
        # print(mikoerr2)
        errobackup.close()
        raise

    finally:
        ssh.close()


single_backup()


