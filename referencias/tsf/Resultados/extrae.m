function extrae()

do
ruta = input('Escribe la ruta al directorio contenedor: ',"s");
if(ruta (length (ruta)) ~= '/')
	ruta = [ruta '/'];
end
if(isempty (ls (ruta)))
	ruta = [pwd '/'];
end
nombre = input('Escribe el nombre del archivo: ',"s");
archivo = [ruta nombre];
until(~isempty (ls (archivo)))

manejador = load(archivo);

freq = manejador(:,1);
S11 = manejador(:,2) + j*manejador(:,3);
SN1 = manejador(:,4) + j*manejador(:,5);
S11dB = 20*log10(abs(S11));
S11rad = angle(S11);
SN1dB = 20*log10(abs(SN1));
SN1rad = angle(SN1);

manejador = nombre(1:(find(nombre == '.') - 1));
salida = [ruta manejador "Oct.txt"];
if(isempty (ls (salida)))
	save("-text", salida, "freq", "S11dB", "S11rad", "SN1dB", "SN1rad", "S11", "SN1");
end
salida = [ruta manejador "Oct.bin"];
if(isempty (ls (salida)))
	save("-binary", salida, "freq", "S11dB", "S11rad", "SN1dB", "SN1rad", "S11", "SN1");
end
salida = [ruta manejador "Oct.7"];
if(isempty (ls (salida)))
	save("-7", salida, "freq", "S11dB", "S11rad", "SN1dB", "SN1rad", "S11", "SN1");
end

end
