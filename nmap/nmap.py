import nmap

begin = 78
end = 80
target = '148.234.5.206'

scanner = nmap.PortScanner()
for i in range(begin,end+1):

    res= scanner.scan(target,str(i))
    res=res['scan'][target]['tcp'][i]['state']
    print(f'port {i} is {res}')
