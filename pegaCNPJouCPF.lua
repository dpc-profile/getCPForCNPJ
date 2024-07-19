function IdentificadorCnpj(texto)
    local pattern = "(%d%d)(%d%d%d)(%d%d%d)(%d%d%d%d)(%d%d)"
    local grupo1, grupo2, grupo3, grupo4, grupo5 = string.match(texto, pattern)
    
    if not grupo1 then
        return nil
    end

    local cnpj = string.format("%s.%s.%s/%s-%s", grupo1, grupo2, grupo3, grupo4, grupo5)
    return cnpj
end

function IdentificadorCpf(texto)
    local pattern = "(%d%d%d)(%d%d%d)(%d%d%d)(%d%d)"
    local grupo1, grupo2, grupo3, grupo4 = string.match(texto, pattern)
    
    if not grupo1 then
        return nil
    end

    local cpf = string.format("%s.%s.%s-%s", grupo1, grupo2, grupo3, grupo4)
    return cpf
end

io.write("Digite um CNPJ ou CPF: ")
local textoInput = io.read()

-- local textoInput = "12345678000195"
-- local textoInput = "12345678909"

local resultado = IdentificadorCnpj(textoInput)

if resultado == nil then
    resultado = IdentificadorCpf(textoInput)
end
print(resultado)

