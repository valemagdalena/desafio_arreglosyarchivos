array = [5, 3, 2, 5, 10]

def chart (array)
    #calcular el numero mas grande
    alto = 0
    lines = array.count

    lines.times do |i|
        if alto < array[i]
            alto = array[i]
        end
    end
    
    #dibujando el patron
    lines.times do |i|
        print "|"
        print "*"*array[i]*2
        print "\n"
    end
 #dibuja signo mayor
 print ">"
 print "-"*alto*2
 print "\n"
 #dibujando los numeros
 alto.times do |i|
    print "#{i + 1} "
 end
end

chart array
puts
