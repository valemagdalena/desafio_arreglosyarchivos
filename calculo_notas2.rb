data = File.open('notas.data').readlines
data.map!{|line| line.split(',')}

def nota_mas_alta(array)
    resultado = []
    array.each do |line|
    resultado.push [line[0], line.map!{|x| x.to_i}.max]
    end
    return resultado
end
print nota_mas_alta(data)