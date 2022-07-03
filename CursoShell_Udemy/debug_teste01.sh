#!/bin/bash

<<comentario

Então existe algumas formas de testar a integridade de um script,
se ele tá com erros em sintaxe ou algo do tipo, a melhor forma é utilizando
o comando abaixo.

# bash -n script.sh

Se caso tiver chamada de parâmetro pode utilizar também como abaixo.

# bash -n script.sh 10 150

Dessa forma ele irá varrer todo o script atrás de erros de sintaxe,
muito útil em caso de scripts grandes que eu não quero fazer verificação
manual.

Também há uma forma mais detalhada de utilizar o comando bash. Que seria com o parâmetro -x, como abaixo.

# bash -x script.sh

O interessante dessa forma, é que ele executa cada linha do código em busca de erros.

Também possível utilizar o parâmetro abaixo.

# bash -v script.sh

Que mostra a saída completa do script.

Possível utilizar o V e X juntos, como abaixo.

# bash -xv script.sh

Que mostra o melhor dos dois.

comentario
