from ftplib import FTP, error_perm
# ...
ftp.dir()  # Imprime el contenido de la carpeta actual
print ftp.pwd()  # Imprime la ruta actual ("/debian")
ftp.mkd("nueva_carpeta")  # Crea una nueva carpeta ((m)a(k)e (d)irectory)
ftp.rmd("nueva_carpeta")  # La elimina ((r)e(m)ove (d)irectory)
# Retorna el tamaño del archivo especificado. El comando "SIZE"
# no es estándar, por lo que retorna None en caso de fallar. 
# De lo contrario, retorna un entero representando los bytes.
readme_size = ftp.size("README")
if readme_size is None:
    print "Comando SIZE no soportado."
else:
    print "README: %d bytes." % readme_size
ftp.rename("README", "LEEME")  # Renombrar un archivo
try:
    # Envia un comando y retorna la respuesta
    print ftp.sendcmd("SIZE LEEME")
except error_perm as e:
    print e
ftp.delete("LEEME")  # Eliminar
