data = File.open('ventas_base.db').read.split(",")
data.map!{|x| x.to_f}

def aumentar(array, aumento, desde, hasta)
filtered_array = array[desde..hasta]
filtered_array.map!{|vta_mensual| vta_mensual * aumento}.sum
end

output = File.open('resultados.data', 'w')
output.write('//Estos valores son referenciales')
output.write("\n")
output.write(aumentar(data, 1.1, 0, 5))
output.write("\n")
output.write(aumentar(data, 1.2, 6, 11))
output.close